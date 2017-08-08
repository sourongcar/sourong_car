package com.sourong.product.service;

import java.io.File;
import java.io.IOException;
import java.util.Set;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.base.common.util.ConfigUtil;
import com.base.common.util.IDUtil;
import com.base.common.util.SearchConditionUtils;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.configuration.dao.ConfigurationVOMapper;
import com.sourong.configuration.domain.ConfigurationVO;
import com.sourong.configuration.domain.ConfigurationVOExample;
import com.sourong.product.dao.ProductVOMapper;
import com.sourong.product.dao.ProductVOMapperExt;
import com.sourong.product.domain.ProductVO;
import com.sourong.product.domain.ProductVOExample;


@Service
public class ProductServiceImp implements ProductService {
	@Autowired
	private ProductVOMapper mapper;
	@Autowired
	private ProductVOMapperExt mapperExt;
	@Autowired
	private ConfigurationVOMapper configMapper;
	/**
	 * 新增
	 * @param entity
	 * @return
	 */
	@Override
	@Transactional
	public int add(ProductVO entity) {
		mapper.insertSelective(entity);
		ConfigurationVO c=new ConfigurationVO();
		c.setProductid(entity.getProductid());
		configMapper.insertSelective(c);
		ProductVO p=new ProductVO();
		p.setConfigurationid(c.getConfigurationid());
		p.setProductid(entity.getProductid());
		return mapper.updateByPrimaryKeySelective(p);
	}
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@Override
	@Transactional
	public int delete(Integer id) {
		ConfigurationVOExample example=new ConfigurationVOExample();
		example.createCriteria().andProductidEqualTo(id);
		configMapper.deleteByExample(example);
		return mapper.deleteByPrimaryKey(id);
	}
	/**
	 * 修改
	 * @param entity
	 * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@Override
	public int update(ProductVO entity) {
		return mapper.updateByPrimaryKeySelective(entity);
	}
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	@Override
	public ProductVO get(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public DataTablesResponse<ProductVO> listByPage(DataTablesRequest request)
			throws Throwable {
		ProductVOExample example = new ProductVOExample();
		DataTablesResponse<ProductVO> response = new DataTablesResponse<ProductVO>();
		SearchConditionUtils.wrapperAndCondition(example, request);// 封装查询条件
		response.setDraw(request.getDraw());
		response.setRecordsTotal(mapper.countByExample(example));
		response.setData(mapper.selectByExample(example));
		return response;
		
	}
	@Override
	public int changeVisibility(int id) {
		return mapperExt.toggledisplay(id);
	}

}