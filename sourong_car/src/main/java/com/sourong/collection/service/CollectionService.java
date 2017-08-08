package com.sourong.collection.service;

import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.collection.domain.CollectionVO;

public interface CollectionService {
    /**
	 * 新增
	 * @param entity
	 * @return
	 */
	public int add(CollectionVO entity);
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
	public int update(CollectionVO entity);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public CollectionVO get(Integer id);
	
	/**
	 * 使用datatables的分页查询
	 * @param request
	 * @return
	 */
	public DataTablesResponse<CollectionVO> listByPage(DataTablesRequest request) throws Throwable;
	
	
}
