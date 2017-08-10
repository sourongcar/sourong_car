package com.sourong.article.dao;

import com.sourong.article.domain.ArticleVO;
import com.sourong.article.domain.ArticleVOExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ArticleVOMapper {
    int countByExample(ArticleVOExample example);

    int deleteByExample(ArticleVOExample example);

    int deleteByPrimaryKey(Integer articleid);

    int insert(ArticleVO record);

    int insertSelective(ArticleVO record);

    List<ArticleVO> selectByExample(ArticleVOExample example);

    ArticleVO selectByPrimaryKey(Integer articleid);

    int updateByExampleSelective(@Param("record") ArticleVO record, @Param("example") ArticleVOExample example);

    int updateByExample(@Param("record") ArticleVO record, @Param("example") ArticleVOExample example);

    int updateByPrimaryKeySelective(ArticleVO record);

    int updateByPrimaryKey(ArticleVO record);
}