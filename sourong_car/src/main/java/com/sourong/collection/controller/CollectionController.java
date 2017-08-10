package com.sourong.collection.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	/**
	 * 用户的添加收藏功能
	 */
	@RequestMapping("/doAdd")
	public @ResponseBody int doAdd(CollectionVO entity,HttpServletResponse response) {
		response.setHeader("Access-Control-Allow-Origin", "*");
		/*
		 * CurrentUser user = CurrentUser.getInstance();
		 * //entity.setCreatorUserId(user.getUserId());//创建者id
		 * if(entity.getUserid()!=null){//修改 service.update(entity); }else{//新增
		 * service.add(entity); }
		 */
		service.add(entity);
		int id=entity.getCollectionid();
		System.out.println("id是"+id);
		return id;
	}

	/*
	 * 用户的取消收藏功能
	 **/
	@RequestMapping("/doDelete")
	public @ResponseBody String doDelete(@RequestParam(required=true) Integer id,HttpServletResponse response) {
		response.setHeader("Access-Control-Allow-Origin", "*");
		service.delete(id);
		System.out.println("取消成功");
		return "删除成功";
	}
/*	@RequestMapping("/doDelete")
	public @ResponseBody JsonResult doDelete(Integer id) {
		JsonResult rs = new JsonResult();
		service.delete(id);
		rs.setStatus(1);
		rs.setMsg("收藏已取消！");
		return rs;
	}
*/
	/**
	 * 用户的查看“我的收藏”功能
	 **/
	@RequestMapping("/getDisplayList")
	public @ResponseBody List<CollectionVO> getDisplayList(Integer userid,HttpServletResponse response) {
		response.setHeader("Access-Control-Allow-Origin", "*");
		return service.getDisplayList(userid);
	}

}

/*
 * @RequestMapping("/list") public String list(){ return
 * "collection/list";//跳转到分页查询页面 }
 *//**
	 * datatable分页查询接口
	 * 
	 * @param request
	 * @return
	 * @throws Throwable
	 *//*
		 * @RequestMapping("/rest/doSearch") public @ResponseBody
		 * DataTablesResponse<CollectionVO> pageSearch(
		 * 
		 * @RequestBody DataTablesRequest request) throws Throwable{ return
		 * service.listByPage(request); }
		 * 
		 */

