package com.sourong.configuration.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.sourong.configuration.domain.ConfigurationVO;
import com.sourong.configuration.domain.ConfigurationVOExample;

public interface ConfigurationVOMapper {
    int countByExample(ConfigurationVOExample example);

    int deleteByExample(ConfigurationVOExample example);

    int deleteByPrimaryKey(Integer configurationid);

    int insert(ConfigurationVO record);

    int insertSelective(ConfigurationVO record);

    List<ConfigurationVO> selectByExample(ConfigurationVOExample example);

    ConfigurationVO selectByPrimaryKey(Integer configurationid);

    int updateByExampleSelective(@Param("record") ConfigurationVO record, @Param("example") ConfigurationVOExample example);

    int updateByExample(@Param("record") ConfigurationVO record, @Param("example") ConfigurationVOExample example);

    int updateByPrimaryKeySelective(ConfigurationVO record);

    int updateByPrimaryKey(ConfigurationVO record);
}