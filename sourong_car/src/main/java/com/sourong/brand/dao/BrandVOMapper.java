package com.sourong.brand.dao;

import com.sourong.brand.domain.BrandVO;
import com.sourong.brand.domain.BrandVOExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BrandVOMapper {
    int countByExample(BrandVOExample example);

    int deleteByExample(BrandVOExample example);

    int deleteByPrimaryKey(Integer brandid);

    int insert(BrandVO record);

    int insertSelective(BrandVO record);

    List<BrandVO> selectByExample(BrandVOExample example);

    BrandVO selectByPrimaryKey(Integer brandid);

    int updateByExampleSelective(@Param("record") BrandVO record, @Param("example") BrandVOExample example);

    int updateByExample(@Param("record") BrandVO record, @Param("example") BrandVOExample example);

    int updateByPrimaryKeySelective(BrandVO record);

    int updateByPrimaryKey(BrandVO record);
}