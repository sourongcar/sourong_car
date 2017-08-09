package com.sourong.consultant.service;

import java.util.Date;

import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.consultant.domain.ConsultantVO;



public interface ConsultantService {
    /**
	 * 新增
	 * @param entity
	 * @return
	 */
	public int add(ConsultantVO entity);
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
	public int update(ConsultantVO entity);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public ConsultantVO get(Integer id);
	
	/**
	 * 使用datatables的分页查询
	 * @param request
	 * @return
	 */
	public DataTablesResponse<ConsultantVO> listByPage(DataTablesRequest request) throws Throwable;
	
	/**
	 * 将当前咨询信息标注为已读状态
	 * @param consultantId 对应咨询的 id
	 * @return
	 */
	public int markRead(String consultantId);
	
	/**
	 * 判断当前用户是否已经咨询过这辆车
	 * @param userId
	 * @param carId
	 * @return
	 */
	public boolean canConsultAgain(Integer userId,Integer carId,Date date);
}
