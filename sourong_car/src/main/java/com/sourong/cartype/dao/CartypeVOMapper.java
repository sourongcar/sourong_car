package com.sourong.cartype.dao;

import com.sourong.cartype.domain.CartypeVO;
import com.sourong.cartype.domain.CartypeVOExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CartypeVOMapper {
    int countByExample(CartypeVOExample example);

    int deleteByExample(CartypeVOExample example);

    int deleteByPrimaryKey(Integer cartypeid);

    int insert(CartypeVO record);

    int insertSelective(CartypeVO record);

    List<CartypeVO> selectByExample(CartypeVOExample example);

    CartypeVO selectByPrimaryKey(Integer cartypeid);

    int updateByExampleSelective(@Param("record") CartypeVO record, @Param("example") CartypeVOExample example);

    int updateByExample(@Param("record") CartypeVO record, @Param("example") CartypeVOExample example);

    int updateByPrimaryKeySelective(CartypeVO record);

    int updateByPrimaryKey(CartypeVO record);
}