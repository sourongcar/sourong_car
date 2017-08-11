package com.sourong.collection.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.base.common.util.SearchConditionUtils;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.collection.dao.CollectionVOMapper;
import com.sourong.collection.domain.CollectionVO;
import com.sourong.collection.domain.CollectionVOExample;
import com.sourong.collection.domain.CollectionVOExample.Criteria;
import com.sourong.product.dao.ProductVOMapper;
import com.sourong.product.domain.ProductVO;


@Service
public class CollectionServiceImp implements CollectionService {
	@Autowired
	private CollectionVOMapper cMapper;
	
	@Autowired
	private ProductVOMapper pMapper;
	/**
	 * 新增
	 * @param entity
	 * @return
	 */
	@Override
	public int add(CollectionVO entity) {
		return cMapper.insertSelective(entity);
	}
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@Override
	public int delete(Integer id) {
		return cMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 修改
	 * @param entity
	 * @return
	 */
	@Override
	public int update(CollectionVO entity) {
		return cMapper.updateByPrimaryKeySelective(entity);
	}
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	@Override
	public CollectionVO get(Integer id) {
		return cMapper.selectByPrimaryKey(id);
	}

	@Override
	public DataTablesResponse<CollectionVO> listByPage(DataTablesRequest request)
			throws Throwable {
		CollectionVOExample example = new CollectionVOExample();
		DataTablesResponse<CollectionVO> response = new DataTablesResponse<CollectionVO>();
		SearchConditionUtils.wrapperAndCondition(example, request);// 封装查询条件
		response.setDraw(request.getDraw());
		response.setRecordsTotal(cMapper.countByExample(example));
		response.setData(cMapper.selectByExample(example));
		return response;
		
	}
	@Override
	public List<CollectionVO> getDisplayList(Integer userId) {
		CollectionVOExample example = new CollectionVOExample();
		example.createCriteria().andUseridEqualTo(userId);
		List<CollectionVO> displayList = cMapper.selectByExample(example);
		return displayList;
	}
	
	@Override
	public int insertCollectionItem(Integer userId, Integer productId) {
		ProductVO productVO = pMapper.selectByPrimaryKey(productId);
		CollectionVO collectionVO = new CollectionVO();
		collectionVO.setUserid(userId);
		collectionVO.setProductid(productId);
		collectionVO.setTitle(collectionVO.getTitle());
		collectionVO.setMarketprice(collectionVO.getMarketprice());
		collectionVO.setSourongprice(productVO.getSourongprice());
		collectionVO.setCoverpic(collectionVO.getCoverpic());
		return cMapper.insertSelective(collectionVO);	
	}
	@Override
	public List<CollectionVO> ifBeCollected(Integer userid, List<Integer> productIdList) {
		CollectionVOExample example = new CollectionVOExample();
		List<Criteria> criteriaList = example.getOredCriteria();
		for(Integer productId : productIdList){
			Criteria criteria = example.createCriteria();
			criteria.andProductidEqualTo(productId);
			criteriaList.add(criteria);
		}
		example.createCriteria().andUseridEqualTo(userid);
		return cMapper.selectByExample(example);
	}
}
