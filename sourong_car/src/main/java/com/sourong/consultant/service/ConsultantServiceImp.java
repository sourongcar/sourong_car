package com.sourong.consultant.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.base.common.util.SearchConditionUtils;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.consultant.dao.ConsultantVOMapper;
import com.sourong.consultant.domain.ConsultantVO;
import com.sourong.consultant.domain.ConsultantVOExample;




@Service
public class ConsultantServiceImp implements ConsultantService {
	@Autowired
	private ConsultantVOMapper mapper;
	/**
	 * 新增
	 * @param entity
	 * @return
	 */
	@Override
	public int add(ConsultantVO entity) {
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
	public int update(ConsultantVO entity) {
		return mapper.updateByPrimaryKeySelective(entity);
	}
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	@Override
	public ConsultantVO get(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public DataTablesResponse<ConsultantVO> listByPage(DataTablesRequest request)
			throws Throwable {
		ConsultantVOExample example = new ConsultantVOExample();
		DataTablesResponse<ConsultantVO> response = new DataTablesResponse<ConsultantVO>();
		SearchConditionUtils.wrapperAndCondition(example, request);// 封装查询条件
		response.setDraw(request.getDraw());
		response.setRecordsTotal(mapper.countByExample(example));
		response.setData(mapper.selectByExample(example));
		return response;
		
	}
	@Override
	public int markRead(String consultantId) {
		ConsultantVOExample example = new ConsultantVOExample();
		example.createCriteria().andConsultantidEqualTo(Integer.valueOf(consultantId));
		ConsultantVO vo = new ConsultantVO();
		vo.setIsreply(0);
		return mapper.updateByExampleSelective(vo,example);
	}

}
