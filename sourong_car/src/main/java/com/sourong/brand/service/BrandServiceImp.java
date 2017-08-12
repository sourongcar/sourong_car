package com.sourong.brand.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.common.util.SearchConditionUtils;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.brand.dao.BrandVOMapper;
import com.sourong.brand.dao.BrandVOMapperExt;
import com.sourong.brand.domain.BrandVO;
import com.sourong.brand.domain.BrandVOExample;
import com.sourong.cartype.domain.CartypeVO;
import com.sourong.cartype.domain.CartypeVOExample;


@Service
public class BrandServiceImp implements BrandService {
	@Autowired
	private BrandVOMapper mapper;
	@Autowired
	private BrandVOMapperExt mapperExt;
	
	/**
	 * 新增
	 * @param entity
	 * @return
	 */
	@Override
	public int add(BrandVO entity) {
		return mapper.insertSelective(entity);
	}
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@Override
	public int delete(Integer id) {
		return mapper.deleteByPrimaryKey(id);
	}
	/**
	 * 修改
	 * @param entity
	 * @return
	 */
	@Override
	public int update(BrandVO entity) {
		return mapper.updateByPrimaryKeySelective(entity);
	}
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	@Override
	public BrandVO get(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public DataTablesResponse<BrandVO> listByPage(DataTablesRequest request)
			throws Throwable {
		BrandVOExample example = new BrandVOExample();
		DataTablesResponse<BrandVO> response = new DataTablesResponse<BrandVO>();
		SearchConditionUtils.wrapperAndCondition(example, request);// 封装查询条件
		response.setDraw(request.getDraw());
		response.setRecordsTotal(mapper.countByExample(example));
		response.setData(mapper.selectByExample(example));
		return response;
		
	}
	@Override
	public List<String> names() {
		return mapperExt.names();
	}
	@Override
	public List<BrandVO> list() throws Throwable {
		BrandVOExample example=new BrandVOExample();
		example.createCriteria();
		return mapper.selectByExample(example);
	}
	@Override
	public List<BrandVO> getbybrandid(Integer brandid) {
		BrandVOExample example=new BrandVOExample();
		example.createCriteria().andBrandidEqualTo(brandid);
		return mapper.selectByExample(example);
	}

	
	
	

}
