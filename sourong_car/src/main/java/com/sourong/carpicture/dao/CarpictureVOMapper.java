package com.sourong.carpicture.dao;

import com.sourong.carpicture.domain.CarpictureVO;
import com.sourong.carpicture.domain.CarpictureVOExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CarpictureVOMapper {
    int countByExample(CarpictureVOExample example);

    int deleteByExample(CarpictureVOExample example);

    int deleteByPrimaryKey(Integer carpictureid);

    int insert(CarpictureVO record);

    int insertSelective(CarpictureVO record);

    List<CarpictureVO> selectByExample(CarpictureVOExample example);

    CarpictureVO selectByPrimaryKey(Integer carpictureid);

    int updateByExampleSelective(@Param("record") CarpictureVO record, @Param("example") CarpictureVOExample example);

    int updateByExample(@Param("record") CarpictureVO record, @Param("example") CarpictureVOExample example);

    int updateByPrimaryKeySelective(CarpictureVO record);

    int updateByPrimaryKey(CarpictureVO record);
}