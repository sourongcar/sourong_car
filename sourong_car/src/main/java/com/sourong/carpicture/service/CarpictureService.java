package com.sourong.carpicture.service;

import java.util.List;

import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.carpicture.domain.CarpictureVO;

public interface CarpictureService {
    /**
	 * 新增
	 * @param entity
	 * @return
	 */
	public int add(CarpictureVO entity);
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
	public int update(CarpictureVO entity);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public CarpictureVO get(Integer id);
	
	/**
	 * 使用datatables的分页查询
	 * @param request
	 * @return
	 */
	public DataTablesResponse<CarpictureVO> listByPage(DataTablesRequest request) throws Throwable;
	/**
	 * 如果产品可见，列出所有图片
	 * @param productid
	 * @return
	 */
	List<CarpictureVO> listFull(int productid);
	
	List<CarpictureVO> listByProduct(int productid);
	/**
	 * 产品图片数量
	 */
	int count(int productid);
}
