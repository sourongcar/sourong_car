package com.sourong.company.dao;

import com.sourong.company.domain.CompanyVO;
import com.sourong.company.domain.CompanyVOExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CompanyVOMapper {
    int countByExample(CompanyVOExample example);

    int deleteByExample(CompanyVOExample example);

    int deleteByPrimaryKey(Integer companyid);

    int insert(CompanyVO record);

    int insertSelective(CompanyVO record);

    List<CompanyVO> selectByExample(CompanyVOExample example);

    CompanyVO selectByPrimaryKey(Integer companyid);

    int updateByExampleSelective(@Param("record") CompanyVO record, @Param("example") CompanyVOExample example);

    int updateByExample(@Param("record") CompanyVO record, @Param("example") CompanyVOExample example);

    int updateByPrimaryKeySelective(CompanyVO record);

    int updateByPrimaryKey(CompanyVO record);
}