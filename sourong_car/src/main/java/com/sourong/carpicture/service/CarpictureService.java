package com.sourong.carpicture.service;

import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.carpicture.domain.CarpictureVO;

public interface CarpictureService {
    /**
	 * 新增
	 * @param entity
	 * @return
	 */
	public int add(CarpictureVO entity);
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
	public int update(CarpictureVO entity);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public CarpictureVO get(Integer id);
	
	/**
	 * 使用datatables的分页查询
	 * @param request
	 * @return
	 */
	public DataTablesResponse<CarpictureVO> listByPage(DataTablesRequest request) throws Throwable;
	
	
}
