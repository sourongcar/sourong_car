package com.sourong.carpicture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.base.common.util.SearchConditionUtils;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.carpicture.dao.CarpictureVOMapper;
import com.sourong.carpicture.domain.CarpictureVO;
import com.sourong.carpicture.domain.CarpictureVOExample;


@Service
public class CarpictureServiceImp implements CarpictureService {
	@Autowired
	private CarpictureVOMapper mapper;
	/**
	 * 新增
	 * @param entity
	 * @return
	 */
	@Override
	public int add(CarpictureVO entity) {
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
	public int update(CarpictureVO entity) {
		return mapper.updateByPrimaryKeySelective(entity);
	}
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	@Override
	public CarpictureVO get(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public DataTablesResponse<CarpictureVO> listByPage(DataTablesRequest request)
			throws Throwable {
		CarpictureVOExample example = new CarpictureVOExample();
		DataTablesResponse<CarpictureVO> response = new DataTablesResponse<CarpictureVO>();
		SearchConditionUtils.wrapperAndCondition(example, request);// 封装查询条件
		response.setDraw(request.getDraw());
		response.setRecordsTotal(mapper.countByExample(example));
		response.setData(mapper.selectByExample(example));
		return response;
		
	}
	@Override
	public List<CarpictureVO> listFull(int productid) {
		CarpictureVOExample example = new CarpictureVOExample();
		example.createCriteria().andProductidEqualTo(productid);
		example.setOrderByClause("islooping asc");
		return mapper.selectByExample(example);
	}

}
