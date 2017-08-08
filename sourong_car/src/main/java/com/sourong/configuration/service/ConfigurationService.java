package com.sourong.configuration.service;

import com.base.common.domain.PageVO;
import com.sourong.configuration.domain.ConfigurationVO;
import com.sourong.configuration.domain.ConfigurationVOExample;

public interface ConfigurationService {
    /**
	 * 新增
	 * @param entity
	 * @return
	 */
	public int add(ConfigurationVO entity);
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
	public int update(ConfigurationVO entity);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public ConfigurationVO get(Integer id);
	
	/**
	 * 使用datatables的分页查询
	 * @param request
	 * @return
	 */
	public PageVO<ConfigurationVO> listByPage(PageVO<ConfigurationVO> pageVO,ConfigurationVOExample example);
	
	
}
