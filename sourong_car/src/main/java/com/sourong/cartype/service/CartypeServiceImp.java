package com.sourong.cartype.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.common.util.SearchConditionUtils;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.cartype.dao.CartypeVOMapper;
import com.sourong.cartype.dao.CartypeVOMapperExt;
import com.sourong.cartype.domain.CartypeVO;
import com.sourong.cartype.domain.CartypeVOExample;


@Service
public class CartypeServiceImp implements CartypeService {
	@Autowired
	private CartypeVOMapper mapper;
	@Autowired
	private CartypeVOMapperExt mapperExt;
	/**
	 * 新增
	 * @param entity
	 * @return
	 */
	@Override
	public int add(CartypeVO entity) {
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
	public int update(CartypeVO entity) {
		return mapper.updateByPrimaryKeySelective(entity);
	}
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	@Override
	public CartypeVO get(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public DataTablesResponse<CartypeVO> listByPage(DataTablesRequest request)
			throws Throwable {
		CartypeVOExample example = new CartypeVOExample();
		DataTablesResponse<CartypeVO> response = new DataTablesResponse<CartypeVO>();
		SearchConditionUtils.wrapperAndCondition(example, request);// 封装查询条件
		response.setDraw(request.getDraw());
		response.setRecordsTotal(mapper.countByExample(example));
		response.setData(mapper.selectByExample(example));
		return response;
		
	}
	
	/**
	 * 根据品牌编号查询相对应的车型信息
	 * @param brandid
	 * @return
	 */
	@Override
	public List<CartypeVO> getByBrandid(Integer brandid) {
		CartypeVOExample example=new CartypeVOExample();
		example.createCriteria().andBrandidEqualTo(brandid);
		return mapper.selectByExample(example);
	}
	@Override
	public List<String> of(String brandName) {
		return mapperExt.ofBrandName(brandName);
	}

}
