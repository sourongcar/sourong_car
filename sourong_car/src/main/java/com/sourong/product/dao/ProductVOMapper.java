package com.sourong.product.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.sourong.product.domain.ProductVO;
import com.sourong.product.domain.ProductVOExample;

public interface ProductVOMapper {
    int countByExample(ProductVOExample example);

    int deleteByExample(ProductVOExample example);

    int deleteByPrimaryKey(Integer productid);

    int insert(ProductVO record);

    int insertSelective(ProductVO record);

    List<ProductVO> selectByExample(ProductVOExample example);

    ProductVO selectByPrimaryKey(Integer productid);

    int updateByExampleSelective(@Param("record") ProductVO record, @Param("example") ProductVOExample example);

    int updateByExample(@Param("record") ProductVO record, @Param("example") ProductVOExample example);

    int updateByPrimaryKeySelective(ProductVO record);

    int updateByPrimaryKey(ProductVO record);
}