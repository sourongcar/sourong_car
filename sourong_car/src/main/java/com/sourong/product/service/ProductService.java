package com.sourong.product.service;

import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.product.domain.ProductVO;

public interface ProductService {
	public static final int HEAD_FULL=-1;
	public static final int HOT_FULL=-2;
    /**
	 * 新增
	 * @param entity
	 * @return
	 */
	public int add(ProductVO entity);
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
	public int update(ProductVO entity);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public ProductVO get(Integer id);
	
	/**
	 * 使用datatables的分页查询
	 * @param request
	 * @return
	 */
	public DataTablesResponse<ProductVO> listByPage(DataTablesRequest request) throws Throwable;
	
	/**
	 * 改变是否展示
	 */
	int changeVisibility(int id);
	
	int countOfHit(int hit);
}