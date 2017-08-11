package com.sourong.product.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.base.common.util.ConfigUtil;
import com.base.common.util.SearchConditionUtils;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.carpicture.dao.CarpictureVOMapper;
import com.sourong.carpicture.domain.CarpictureVO;
import com.sourong.carpicture.domain.CarpictureVOExample;
import com.sourong.collection.dao.CollectionVOMapper;
import com.sourong.collection.domain.CollectionVO;
import com.sourong.collection.domain.CollectionVOExample;
import com.sourong.configuration.dao.ConfigurationVOMapper;
import com.sourong.configuration.domain.ConfigurationVO;
import com.sourong.configuration.domain.ConfigurationVOExample;
import com.sourong.consultant.dao.ConsultantVOMapper;
import com.sourong.consultant.domain.ConsultantVOExample;
import com.sourong.product.dao.ProductVOMapper;
import com.sourong.product.dao.ProductVOMapperExt;
import com.sourong.product.domain.ProductVO;
import com.sourong.product.domain.ProductVOExample;

@Service
public class ProductServiceImp implements ProductService {
	@Autowired
	private ProductVOMapper mapper;
	@Autowired
	private ProductVOMapperExt mapperExt;
	@Autowired
	private ConfigurationVOMapper configMapper;
	@Autowired
	private CollectionVOMapper collectionMapper;
	@Autowired
	private CarpictureVOMapper carpictureMapper;
	@Autowired
	private ConsultantVOMapper consultantMapper;

	/**
	 * 新增
	 * 
	 * @param entity
	 * @return
	 */
	@Override
	@Transactional
	public synchronized int add(ProductVO entity) {
		int hit = entity.getHit();
		if (hit < 2) {
			ProductVOExample example = new ProductVOExample();
			if (hit == 0) {// 检查首页轮播数量
				example.createCriteria().andHitEqualTo(0);
				if (mapper.countByExample(example) >= 4) {
					return HEAD_FULL;
				}
			} else {// 检查热门数量
				example.createCriteria().andHitEqualTo(1);
				if (mapper.countByExample(example) >= 6) {
					return HOT_FULL;
				}
			}
		}
		mapper.insertSelective(entity);
		ConfigurationVO c = new ConfigurationVO();
		c.setProductid(entity.getProductid());
		configMapper.insertSelective(c);
		ProductVO p = new ProductVO();
		p.setConfigurationid(c.getConfigurationid());
		p.setProductid(entity.getProductid());
		return mapper.updateByPrimaryKeySelective(p);
	}

	/**
	 * 删除
	 * 
	 * @param id
	 * @return
	 */
	@Override
	@Transactional
	public int delete(Integer id) {
		ProductVO record = mapper.selectByPrimaryKey(id);
		ConfigurationVOExample configExample = new ConfigurationVOExample();
		configExample.createCriteria().andProductidEqualTo(id);
		configMapper.deleteByExample(configExample);
		CarpictureVOExample carpictureExample = new CarpictureVOExample();
		carpictureExample.createCriteria().andProductidEqualTo(id);
		List<CarpictureVO> picList = carpictureMapper.selectByExample(carpictureExample);
		carpictureMapper.deleteByExample(carpictureExample);
		CollectionVOExample collectionExample = new CollectionVOExample();
		collectionExample.createCriteria().andProductidEqualTo(id);
		collectionMapper.deleteByExample(collectionExample);
		ConsultantVOExample consultantExample = new ConsultantVOExample();
		consultantExample.createCriteria().andProductidEqualTo(id);
		consultantMapper.deleteByExample(consultantExample);
		int result = mapper.deleteByPrimaryKey(id);
		File f = new File(ConfigUtil.getValue("saveImage") + record.getCoverpic());
		if (f.exists()) {
			f.delete();
		}
		for (CarpictureVO cp : picList) {
			f = new File(ConfigUtil.getValue("saveImage") + cp.getPicture());
			if (f.exists()) {
				f.delete();
			}
		}
		return result;
	}

	/**
	 * 修改
	 * 
	 * @param entity
	 * @return
	 * @throws IOException
	 * @throws IllegalStateException
	 */
	@Override
	@Transactional
	public synchronized int update(ProductVO entity) {
		Integer hit = entity.getHit();
		if (hit != null && hit < 2) {
			ProductVOExample example = new ProductVOExample();
			if (hit == 0) {// 检查首页轮播数量
				example.createCriteria().andHitEqualTo(0).andProductidNotEqualTo(entity.getProductid());
				if (mapper.countByExample(example) >= 4) {
					return HEAD_FULL;
				}
			} else {// 检查热门数量
				example.createCriteria().andHitEqualTo(1).andProductidNotEqualTo(entity.getProductid());
				if (mapper.countByExample(example) >= 6) {
					return HOT_FULL;
				}
			}
		}
		ProductVO record = mapper.selectByPrimaryKey(entity.getProductid());
		CollectionVOExample collectionExample = new CollectionVOExample();
		collectionExample.createCriteria().andProductidEqualTo(entity.getProductid());
		CollectionVO collection = new CollectionVO();
		collection.setCoverpic(entity.getCoverpic());
		collection.setMarketprice(entity.getMarketprice());
		collection.setSourongprice(entity.getSourongprice());
		collection.setTitle(entity.getTitle());
		collectionMapper.updateByExampleSelective(collection, collectionExample);
		int result = mapper.updateByPrimaryKeySelective(entity);
		if (entity.getCoverpic() != null && !entity.getCoverpic().equals(record.getCoverpic())) {
			File f = new File(ConfigUtil.getValue("saveImage") + record.getCoverpic());
			if (f.exists()) {
				f.delete();
			}
		}
		return result;
	}

	/**
	 * 查询
	 * 
	 * @param id
	 * @return
	 */
	@Override
	public ProductVO get(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public DataTablesResponse<ProductVO> listByPage(DataTablesRequest request) throws Throwable {
		ProductVOExample example = new ProductVOExample();
		DataTablesResponse<ProductVO> response = new DataTablesResponse<ProductVO>();
		SearchConditionUtils.wrapperAndCondition(example, request);// 封装查询条件
		response.setDraw(request.getDraw());
		response.setRecordsTotal(mapper.countByExample(example));
		response.setData(mapper.selectByExample(example));
		return response;

	}

	@Override
	public int changeVisibility(int id) {
		return mapperExt.toggledisplay(id);
	}

	@Override
	public int countOfHit(int hit) {
		ProductVOExample example = new ProductVOExample();
		example.createCriteria().andHitEqualTo(hit);
		return mapper.countByExample(example);
	}

	@Override
	public List<ProductVO> listLooping() {
		return mapperExt.listLooping();
	}

	@Override
	public Map<String,Object> listDisplay(int displayedCount) {
		int offset=displayedCount<0?0:displayedCount,limit=displayedCount>0?3:6;
		ProductVOExample example = new ProductVOExample();
		example.createCriteria().andHitGreaterThan(0).andIsdisplayEqualTo(0);
		Map<String,Object> result=new TreeMap<String,Object>();
		result.put("list", mapperExt.listDisplay(offset,limit));
		result.put("end", (mapper.countByExample(example)<=displayedCount+limit));
		return result;
	}

}