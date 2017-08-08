package com.sourong.cartype.service;

import java.util.List;

import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.cartype.domain.CartypeVO;

public interface CartypeService {
    /**
	 * 新增
	 * @param entity
	 * @return
	 */
	public int add(CartypeVO entity);
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	public int delete(Integer id);
	/**
	 * 修改
	 * @param entity
	 * @return
	 */
	public int update(CartypeVO entity);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public CartypeVO get(Integer id);
	
	/**
	 * 使用datatables的分页查询
	 * @param request
	 * @return
	 */
	public DataTablesResponse<CartypeVO> listByPage(DataTablesRequest request) throws Throwable;
	
	/**
	 * 根据品牌编号查询相对应的车型信息
	 * @param brandid
	 * @return
	 */
	public List<CartypeVO> getByBrandid(Integer brandid);
	
	List<String> of(String brandName);
	
}
