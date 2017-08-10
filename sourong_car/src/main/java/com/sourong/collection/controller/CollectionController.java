package com.sourong.collection.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.base.common.domain.CurrentUser;
import com.base.common.domain.JsonResult;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.collection.domain.CollectionVO;
import com.sourong.collection.service.CollectionService;


@Controller
@RequestMapping("/collection")
public class CollectionController {
	@Autowired
	private CollectionService service;
	
	/*@RequestMapping("/edit")
	public String edit(Integer id,ModelMap map){
		if(id!=null){
			map.addAttribute("entity",service.get(id));
		}
		return "collection/edit";//跳转到编辑页面
	}
	*/
	@RequestMapping("/doEdit")
	public String doEdit(CollectionVO entity){
	/*	CurrentUser user = CurrentUser.getInstance();
		//entity.setCreatorUserId(user.getUserId());//创建者id
		if(entity.getUserid()!=null){//修改
			service.update(entity);
		}else{//新增
			service.add(entity);
		}
		*/
		service.add(entity);
		return "收藏成功";//跳转到列表页面
	}
	
	//取消收藏
	@RequestMapping("/rest/doDelete")
	public @ResponseBody JsonResult doDelete(Integer id){
		JsonResult rs=new JsonResult();
		service.delete(id);
		rs.setStatus(1);
		rs.setMsg("取消成功！");
		return rs;
	}
	
	@RequestMapping("/list")
	public String list(){
		return "collection/list";//跳转到分页查询页面
	}
	/**
	 * datatable分页查询接口
	 * @param request
	 * @return
	 * @throws Throwable
	 */
	@RequestMapping("/rest/doSearch")
	public @ResponseBody DataTablesResponse<CollectionVO> pageSearch(
			@RequestBody DataTablesRequest request) throws Throwable{
		return service.listByPage(request);
	}
	
	
	@RequestMapping("/getDisplayList")
	public @ResponseBody List<CollectionVO> getDisplayList(Integer userid) {
		return service.getDisplayList(userid);
	}
}
