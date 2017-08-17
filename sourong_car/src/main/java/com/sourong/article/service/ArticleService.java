package com.sourong.article.service;

import java.util.List;

import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.article.domain.ArticleVO;

public interface ArticleService {
    /**
	 * 新增
	 * @param entity
	 * @return
	 */
	public int add(ArticleVO entity);
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	public int delete(Integer id);
	/**
	 * 修改
	 * @param entity
	 * @return
	 */
	public int update(ArticleVO entity);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public ArticleVO get(Integer id);
	
	/**
	 * 使用datatables的分页查询
	 * @param request
	 * @return
	 */
	public DataTablesResponse<ArticleVO> listByPage(DataTablesRequest request) throws Throwable;
	
	public String getContent(Integer id);
	public List<ArticleVO> getallTitle();
	}
