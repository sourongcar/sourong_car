package com.sourong.article.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.base.common.util.SearchConditionUtils;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.article.dao.ArticleVOMapper;
import com.sourong.article.domain.ArticleVO;
import com.sourong.article.domain.ArticleVOExample;


@Service
public class ArticleServiceImp implements ArticleService {
	@Autowired
	private ArticleVOMapper mapper;
	/**
	 * 新增
	 * @param entity
	 * @return
	 */
	@Override
	public int add(ArticleVO entity) {
		return mapper.insertSelective(entity);
	}
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@Override
	public int delete(Integer id) {
		return mapper.deleteByPrimaryKey(id);
	}
	/**
	 * 修改
	 * @param entity
	 * @return
	 */
	@Override
	public int update(ArticleVO entity) {
		return mapper.updateByPrimaryKeySelective(entity);
	}
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	@Override
	public ArticleVO get(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public DataTablesResponse<ArticleVO> listByPage(DataTablesRequest request)
			throws Throwable {
		ArticleVOExample example = new ArticleVOExample();
		DataTablesResponse<ArticleVO> response = new DataTablesResponse<ArticleVO>();
		SearchConditionUtils.wrapperAndCondition(example, request);// 封装查询条件
		response.setDraw(request.getDraw());
		response.setRecordsTotal(mapper.countByExample(example));
		response.setData(mapper.selectByExample(example));
		return response;
		
	}
	@Override
	public String getContent(Integer id) {
		
		return mapper.selectByPrimaryKey(id).getContent();
	}

}
