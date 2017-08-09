package com.sourong.brand.service;

import java.util.List;

import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.brand.domain.BrandVO;
import com.sourong.cartype.domain.CartypeVO;

public interface BrandService {
    /**
	 * 新增
	 * @param entity
	 * @return
	 */
	public int add(BrandVO entity);
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
	public int update(BrandVO entity);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public BrandVO get(Integer id);
	
	/**
	 * 使用datatables的分页查询
	 * @param request
	 * @return
	 */
	public DataTablesResponse<BrandVO> listByPage(DataTablesRequest request) throws Throwable;
	
	List<String> names();
	
	public List<BrandVO> list()throws Throwable;
}
