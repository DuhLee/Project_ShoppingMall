package com.ezen.jhc.web.admin.service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.jhc.common.util.Utils;
import com.ezen.jhc.web.admin.dto.image.AttachImageDTO;
import com.ezen.jhc.web.admin.dto.image.AttachImageListDTO;
import com.ezen.jhc.web.admin.dto.prod.MainCtgrDTO;
import com.ezen.jhc.web.admin.dto.prod.ProdColorDTO;
import com.ezen.jhc.web.admin.dto.prod.ProdColorListDTO;
import com.ezen.jhc.web.admin.dto.prod.ProdDTO;
import com.ezen.jhc.web.admin.dto.prod.ProdSizeListDTO;
import com.ezen.jhc.web.admin.dto.prod.SubCtgrDTO;
import com.ezen.jhc.web.admin.mapper.prod.CtgrMapper;
import com.ezen.jhc.web.admin.mapper.prod.ProdRegMapper;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class AdminProdRegServiceImpl implements AdminProdRegService {

	@Autowired
	CtgrMapper ctgrMapper;

	@Autowired
	ProdRegMapper prodRegMapper;

	@Autowired(required = false)
	Utils util;

	@Override
	public List<MainCtgrDTO> getMainCtgrList() {

		return ctgrMapper.getMainCtgr();
	}

	@Override
	public List<SubCtgrDTO> getSubCtgrList(Integer m_ctgr_num) {

		return ctgrMapper.getSubCtgr(m_ctgr_num);
	}

	@Override
	public Integer regNewProd(ProdDTO prodDTO, AttachImageListDTO imageList, ProdColorListDTO prodColors,
			ProdSizeListDTO prodSizes, StringBuilder p_explain, StringBuilder p_info) {

		for (AttachImageDTO image : imageList.getImageList()) {
			image.setOrigin_img_path(image.getUploadPath(), image.getUuid(), image.getSm_img_path());
			image.setThumb_img_path(image.getUploadPath(), image.getUuid(), image.getSm_img_path());
			image.setLg_img_path(image.getUploadPath(), image.getUuid(), image.getSm_img_path());
			image.setMd_img_path(image.getUploadPath(), image.getUuid(), image.getSm_img_path());
			image.setSm_img_path(image.getUploadPath(), image.getUuid(), image.getSm_img_path());
		}

		for (ProdColorDTO pcDTO : prodColors.getProdColors()) {
			pcDTO.setOrigin_img_path(pcDTO.getPc_img_uploadpath(), pcDTO.getPc_img_uuid(), pcDTO.getPc_img_filename());
			pcDTO.setThumb_img_path(pcDTO.getPc_img_uploadpath(), pcDTO.getPc_img_uuid(), pcDTO.getPc_img_filename());
			pcDTO.setLg_img_path(pcDTO.getPc_img_uploadpath(), pcDTO.getPc_img_uuid(), pcDTO.getPc_img_filename());
			pcDTO.setMd_img_path(pcDTO.getPc_img_uploadpath(), pcDTO.getPc_img_uuid(), pcDTO.getPc_img_filename());
			pcDTO.setSm_img_path(pcDTO.getPc_img_uploadpath(), pcDTO.getPc_img_uuid(), pcDTO.getPc_img_filename());
		}
		
		String explainPath = getTextPath(prodDTO, p_explain);
		String infoPath = getTextPath(prodDTO, p_info);
		
		log.info(explainPath);
		log.info(infoPath);
		prodDTO.setP_explain_path(infoPath);
		prodDTO.setP_info_path(infoPath);
		
		log.info("ProdDTO : " + prodDTO);
		int resultProd = prodRegMapper.regProd(prodDTO);

		log.info(prodDTO);
		log.info(imageList);
		log.info(prodColors);

		imageList.getImageList().forEach(attach -> {

			attach.setP_num(prodDTO.getP_num());
			log.info(prodRegMapper.regProdImage(attach));
		});

		prodColors.getProdColors().forEach(color -> {

			color.setP_num(prodDTO.getP_num());
			log.info(prodRegMapper.regProdColors(color));
		});

		prodSizes.getProdSizes().forEach(size -> {

			size.setP_num(prodDTO.getP_num());
			log.info(prodRegMapper.regProdSizes(size));
		});

		log.info(resultProd);

		return resultProd;
	}

	public String getTextPath(ProdDTO prodDTO, StringBuilder sb) {

		// ?????? ?????? ??????
		String uploadFolder = "C:\\upload\\prod";

		// ?????? ????????? ????????? ?????? ?????? ????????????
		String datePath = util.getNowTime("yyyy-MM-dd", 0).replace("-", File.separator);

		// ?????? ??????
		File uploadPath = new File(uploadFolder, datePath);

		// ?????? ?????? ?????? ?????? ??? ??????
		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}

		String fileName = prodDTO.getP_name() + ".txt";
		String uuid = UUID.randomUUID().toString();

		String uploadTextFileName = uuid + "_" + fileName;

		// ?????? ??????, ?????? ????????? ?????? File ??????
		File saveFile = new File(uploadPath, uploadTextFileName);
		
		
		try (
				BufferedWriter bw = new BufferedWriter(new FileWriter(saveFile));
				){
			bw.write(sb.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return saveFile.getAbsolutePath();
	}

}
