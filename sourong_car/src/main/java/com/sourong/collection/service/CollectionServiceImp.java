package com.sourong.collection.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.base.common.util.SearchConditionUtils;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.collection.dao.CollectionVOMapper;
import com.sourong.collection.domain.CollectionVO;
import com.sourong.collection.domain.CollectionVOExample;


@Service
public class CollectionServiceImp implements CollectionService {
	@Autowired
	private CollectionVOMapper mapper;
	/**
	 * 新增
	 * @param entity
	 * @return
	 */
	@Override
	public int add(CollectionVO entity) {
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
	public int update(CollectionVO entity) {
		return mapper.updateByPrimaryKeySelective(entity);
	}
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	@Override
	public CollectionVO get(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public DataTablesResponse<CollectionVO> listByPage(DataTablesRequest request)
			throws Throwable {
		CollectionVOExample example = new CollectionVOExample();
		DataTablesResponse<CollectionVO> response = new DataTablesResponse<CollectionVO>();
		SearchConditionUtils.wrapperAndCondition(example, request);// 封装查询条件
		response.setDraw(request.getDraw());
		response.setRecordsTotal(mapper.countByExample(example));
		response.setData(mapper.selectByExample(example));
		return response;
		
	}
	@Override
	public List<CollectionVO> getDisplayList(Integer userId) {
		CollectionVOExample example = new CollectionVOExample();
		example.createCriteria().andUseridEqualTo(userId);
		List<CollectionVO> displayList = mapper.selectByExample(example);
		return displayList;
	}

}
