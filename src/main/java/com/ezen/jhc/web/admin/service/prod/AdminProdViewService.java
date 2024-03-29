package com.ezen.jhc.web.admin.service.prod;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ezen.jhc.web.admin.dto.prod.ProdColorDTO;
import com.ezen.jhc.web.admin.dto.prod.ProdColorListDTO;
import com.ezen.jhc.web.admin.dto.prod.ProdDTO;
import com.ezen.jhc.web.admin.dto.prod.ProdSizeDTO;

@Service
public interface AdminProdViewService {
	
	public List<ProdDTO> getProdsList();
	
	public ProdDTO getProdP_num(Integer p_num);
	
	public List<ProdColorDTO> getProdColorList(Integer p_num);
	
	public List<ProdSizeDTO> getProdSizeList(Integer p_num);
	
	Integer deleteProd(Integer p_num);
	
	List<ProdDTO> getSearchProdsList(Integer m_ctgr_num, String p_name);
	
	List<ProdDTO> getSearchKeywordProds(String p_name);
	
	Integer modifyProd(ProdDTO prodDTO);
	
	Integer modifyColors(ProdColorListDTO prodColors);
	
	Integer modifySizes(ProdSizeDTO sizes);
}
