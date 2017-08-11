package com.sourong.collection.dao;

import com.sourong.collection.domain.CollectionVO;
import com.sourong.collection.domain.CollectionVOExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CollectionVOMapper {
    int countByExample(CollectionVOExample example);

    int deleteByExample(CollectionVOExample example);

    int deleteByPrimaryKey(Integer collectionid);

    int insert(CollectionVO record);

    int insertSelective(CollectionVO record);

    List<CollectionVO> selectByExample(CollectionVOExample example);

    CollectionVO selectByPrimaryKey(Integer collectionid);

    int updateByExampleSelective(@Param("record") CollectionVO record, @Param("example") CollectionVOExample example);

    int updateByExample(@Param("record") CollectionVO record, @Param("example") CollectionVOExample example);

    int updateByPrimaryKeySelective(CollectionVO record);

    int updateByPrimaryKey(CollectionVO record);

	void deleteByUserAndPro(Integer userid, Integer productid);
}