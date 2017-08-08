package com.sourong.souronguser.dao;

import com.sourong.souronguser.domain.SouronguserVO;
import com.sourong.souronguser.domain.SouronguserVOExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SouronguserVOMapper {
    int countByExample(SouronguserVOExample example);

    int deleteByExample(SouronguserVOExample example);

    int deleteByPrimaryKey(Integer userid);

    int insert(SouronguserVO record);

    int insertSelective(SouronguserVO record);

    List<SouronguserVO> selectByExample(SouronguserVOExample example);

    SouronguserVO selectByPrimaryKey(Integer userid);

    int updateByExampleSelective(@Param("record") SouronguserVO record, @Param("example") SouronguserVOExample example);

    int updateByExample(@Param("record") SouronguserVO record, @Param("example") SouronguserVOExample example);

    int updateByPrimaryKeySelective(SouronguserVO record);

    int updateByPrimaryKey(SouronguserVO record);
}