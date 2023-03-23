package com.ezen.jhc.web.admin.service.prod;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.jhc.web.admin.dto.prod.ProdColorDTO;
import com.ezen.jhc.web.admin.dto.prod.ProdColorListDTO;
import com.ezen.jhc.web.admin.dto.prod.ProdDTO;
import com.ezen.jhc.web.admin.dto.prod.ProdSizeDTO;
import com.ezen.jhc.web.admin.mapper.prod.ProdColorMapper;
import com.ezen.jhc.web.admin.mapper.prod.ProdMapper;
import com.ezen.jhc.web.admin.mapper.prod.ProdSizeMapper;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class AdminProdViewServiceImpl implements AdminProdViewService{
	
	@Autowired
	ProdMapper prodMapper;
	
	@Autowired
	ProdColorMapper prodColorMapper;
	
	@Autowired
	ProdSizeMapper prodSizeMapper;
	
	@Autowired(required = false)
	ProdDTO prodDTO;
	
	@Autowired(required = false)
	List<ProdDTO> prodList;
	
	@Autowired(required = false)
	List<ProdColorDTO> prodColorList;
	
	@Autowired(required = false)
	List<ProdSizeDTO> prodSizeList;
	
	@Override
	public List<ProdDTO> getProdsList() {
		
		prodList = prodMapper.getProds();
		return prodList;
	}
	
	@Override
	public ProdDTO getProdP_num(Integer p_num) {
		
		prodDTO = prodMapper.getProd(p_num);
		return prodDTO;
	}
	
	@Override
	public List<ProdColorDTO> getProdColorList(Integer p_num) {
		
		prodColorList = prodColorMapper.getProdColors(p_num);
		return prodColorList;
	}
	
	@Override
	public List<ProdSizeDTO> getProdSizeList(Integer p_num) {
		
		prodSizeList = prodSizeMapper.getProdSizes(p_num);
		return prodSizeList;
	}
	
	@Override
	public Integer deleteProd(Integer p_num) {
		int resultProd = prodMapper.deleteProd(p_num);
		int resultImage = prodMapper.deleteProdImage(p_num);
		
		log.info("delete result : " + resultProd + ", result2 : " + resultImage);
		return resultProd;
	}
	
	@Override
	public List<ProdDTO> getSearchProdsList(Integer m_ctgr_num,String p_name) {
		
		return prodMapper.getSearchProds(m_ctgr_num,p_name);
	}
	
	@Override
	public List<ProdDTO> getSearchKeywordProds(String p_name) {
		
		return prodMapper.getSearchKeywordProds(p_name);
	}
	
	@Override
	public Integer modifyProd(ProdDTO prodDTO) {
		
		return prodMapper.modifyProd(prodDTO);
	}
	
	@Override
	public Integer modifyColors(ProdColorListDTO prodColors) {
		
		List<ProdColorDTO> pcList = prodColors.getProdColors();
		for (int i = 0; i < pcList.size(); i++) {
			
			try {
			pcList.get(i).setOrigin_img_path(pcList.get(i).getPc_img_uploadpath(), pcList.get(i).getPc_img_uuid(), pcList.get(i).getPc_img_filename());
			pcList.get(i).setThumb_img_path(pcList.get(i).getPc_img_uploadpath(), pcList.get(i).getPc_img_uuid(), pcList.get(i).getPc_img_filename());
			pcList.get(i).setLg_img_path(pcList.get(i).getPc_img_uploadpath(), pcList.get(i).getPc_img_uuid(), pcList.get(i).getPc_img_filename());
			pcList.get(i).setMd_img_path(pcList.get(i).getPc_img_uploadpath(), pcList.get(i).getPc_img_uuid(), pcList.get(i).getPc_img_filename());
			pcList.get(i).setSm_img_path(pcList.get(i).getPc_img_uploadpath(), pcList.get(i).getPc_img_uuid(), pcList.get(i).getPc_img_filename());
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		
		prodColors.setProdColors(pcList);
		int result = 0;
		prodColors.getProdColors().forEach(color -> {
			
			if (color.getPc_name() != null && color.getPc_name() != "") {
				
				color.setP_num(prodDTO.getP_num());
				prodColorMapper.modifyColor(color);
			}
		});
		
		
		
		return result;
	}
	
	@Override
	public Integer modifySizes(ProdSizeDTO sizes) {
		
		return prodSizeMapper.modifySizes(sizes);
	}
}
