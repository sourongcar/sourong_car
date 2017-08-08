package com.sourong.configuration.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.base.common.domain.PageVO;
import com.sourong.configuration.dao.ConfigurationVOMapper;
import com.sourong.configuration.domain.ConfigurationVO;
import com.sourong.configuration.domain.ConfigurationVOExample;


@Service
public class ConfigurationServiceImp implements ConfigurationService {
	@Autowired
	private ConfigurationVOMapper mapper;
	/**
	 * 新增
	 * @param entity
	 * @return
	 */
	@Override
	public int add(ConfigurationVO entity) {
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
	public int update(ConfigurationVO entity) {
		return mapper.updateByPrimaryKeySelective(entity);
	}
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	@Override
	public ConfigurationVO get(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public PageVO<ConfigurationVO> listByPage(PageVO<ConfigurationVO> pageVO,ConfigurationVOExample example) {
		pageVO.setTotalRecord(mapper.countByExample(example));
		example.setOffset(pageVO.getOffset());
		example.setLimit(pageVO.getPageSize());
		pageVO.setRecords(mapper.selectByExample(example));
		return pageVO;
	}

}
