package com.sourong.souronguser.service;


import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.souronguser.domain.SouronguserVO;

public interface SouronguserService {
    /**
	 * 新增
	 * @param entity
	 * @return
	 */
	public int add(SouronguserVO entity);
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
	public int update(SouronguserVO entity);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public SouronguserVO get(Integer id);
	
	/**
	 * 使用datatables的分页查询
	 * @param request
	 * @return
	 */
	public DataTablesResponse<SouronguserVO> listByPage(DataTablesRequest request) throws Throwable;
	
	
	public SouronguserVO getUserFormPhone(String phone);
	
}
