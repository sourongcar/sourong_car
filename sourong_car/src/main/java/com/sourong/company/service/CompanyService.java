package com.sourong.company.service;

import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.company.domain.CompanyVO;

public interface CompanyService {
    /**
	 * 新增
	 * @param entity
	 * @return
	 */
	public int add(CompanyVO entity);
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
	public int update(CompanyVO entity);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public CompanyVO get(Integer id);
	
	/**
	 * 使用datatables的分页查询
	 * @param request
	 * @return
	 */
	public DataTablesResponse<CompanyVO> listByPage(DataTablesRequest request) throws Throwable;
	
	
}
