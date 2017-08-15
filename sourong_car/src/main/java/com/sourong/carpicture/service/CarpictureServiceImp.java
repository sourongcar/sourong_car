package com.sourong.carpicture.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.common.util.ConfigUtil;
import com.base.common.util.SearchConditionUtils;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.carpicture.dao.CarpictureVOMapper;
import com.sourong.carpicture.domain.CarpictureVO;
import com.sourong.carpicture.domain.CarpictureVOExample;
import com.sourong.product.dao.ProductVOMapper;
import com.sourong.product.domain.ProductVO;


@Service
public class CarpictureServiceImp implements CarpictureService {
	@Autowired
	private CarpictureVOMapper mapper;
	@Autowired
	private ProductVOMapper productMapper;
	/**
	 * 新增
	 * @param entity
	 * @return
	 */
	@Override
	public synchronized int add(CarpictureVO entity) {
		CarpictureVOExample example = new CarpictureVOExample();
		example.createCriteria().andProductidEqualTo(entity.getProductid());
		if(mapper.countByExample(example)>=8)
		{
			return 0;
		}
		return mapper.insertSelective(entity);
	}
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@Override
	public int delete(Integer id) {
		CarpictureVO entity=mapper.selectByPrimaryKey(id);
		File deletefile = new File(ConfigUtil.getValue("saveImage") + entity.getPicture());
		deletefile.delete();
		return mapper.deleteByPrimaryKey(id);
	}
	/**
	 * 修改
	 * @param entity
	 * @return
	 */
	@Override
	public int update(CarpictureVO entity) {
		return mapper.updateByPrimaryKeySelective(entity);
	}
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	@Override
	public CarpictureVO get(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public DataTablesResponse<CarpictureVO> listByPage(DataTablesRequest request)
			throws Throwable {
		CarpictureVOExample example = new CarpictureVOExample();
		DataTablesResponse<CarpictureVO> response = new DataTablesResponse<CarpictureVO>();
		SearchConditionUtils.wrapperAndCondition(example, request);// 封装查询条件
		response.setDraw(request.getDraw());
		response.setRecordsTotal(mapper.countByExample(example));
		response.setData(mapper.selectByExample(example));
		return response;
		
	}
	@Override
	public List<CarpictureVO> listFull(int productid) {
		ProductVO p=productMapper.selectByPrimaryKey(productid);
		if(p!=null&&p.getIsdisplay()==0){
			CarpictureVOExample example = new CarpictureVOExample();
			example.createCriteria().andProductidEqualTo(productid);
			example.setOrderByClause("islooping asc");
			return mapper.selectByExample(example);
		}
		else
			return new ArrayList<CarpictureVO>(1);
	}
	
	@Override
	public List<CarpictureVO> listByProduct(int productid) {
		CarpictureVOExample example = new CarpictureVOExample();
		example.createCriteria().andProductidEqualTo(productid);
		return mapper.selectByExample(example);
	}

	@Override
	public int count(int productid) {
		CarpictureVOExample example = new CarpictureVOExample();
		example.createCriteria().andProductidEqualTo(productid);
		return mapper.countByExample(example);
	}

}
