package com.sourong.souronguser.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.base.common.util.SearchConditionUtils;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.souronguser.dao.SouronguserVOMapper;
import com.sourong.souronguser.domain.SouronguserVO;
import com.sourong.souronguser.domain.SouronguserVOExample;


@Service
public class SouronguserServiceImp implements SouronguserService {
	@Autowired
	private SouronguserVOMapper mapper;
	/**
	 * 新增
	 * @param entity
	 * @return
	 */
	@Override
	public int add(SouronguserVO entity) {
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
	public int update(SouronguserVO entity) {
		return mapper.updateByPrimaryKeySelective(entity);
	}
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	@Override
	public SouronguserVO get(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public DataTablesResponse<SouronguserVO> listByPage(DataTablesRequest request)
			throws Throwable {
		SouronguserVOExample example = new SouronguserVOExample();
		DataTablesResponse<SouronguserVO> response = new DataTablesResponse<SouronguserVO>();
		SearchConditionUtils.wrapperAndCondition(example, request);// 封装查询条件
		response.setDraw(request.getDraw());
		response.setRecordsTotal(mapper.countByExample(example));
		response.setData(mapper.selectByExample(example));
		return response;
		
	}
	@Override
	public SouronguserVO getUserFormPhone(String phone) {
		SouronguserVOExample example = new SouronguserVOExample();
		example.createCriteria().andUserphoneEqualTo(phone);
		List<SouronguserVO> list = mapper.selectByExample(example);
		if(list.size() > 0 && list.get(0) != null){
			return list.get(0);
		}
		return null;
	}

}
