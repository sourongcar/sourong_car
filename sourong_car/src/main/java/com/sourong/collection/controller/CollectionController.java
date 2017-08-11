package com.sourong.collection.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.base.common.domain.JsonResult;
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
	@RequestMapping(value = "/doAdd",method = RequestMethod.POST)
	public @ResponseBody JsonResult doAdd(Integer userId,Integer productId,HttpServletResponse response) {
		response.setHeader("Access-Control-Allow-Origin", "*");
		int status = service.insertCollectionItem(userId,productId);
		JsonResult result = new JsonResult();
		result.setStatus(status);
		result.setMsg("收藏成功");
		return result;
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
	/**
	 * 用户的查看“我的收藏”功能
	 **/
	@RequestMapping("/getDisplayList")
	public @ResponseBody List<CollectionVO> getDisplayList(Integer userid,HttpServletResponse response) {
		response.setHeader("Access-Control-Allow-Origin", "*");
		return service.getDisplayList(userid);
	}

	@RequestMapping("/ifBeCollected")
	public @ResponseBody List<CollectionVO> ifBeCollected(Integer userid,@RequestParam(value="productIdList") List<Integer> productIdList,HttpServletResponse response){
		response.setHeader("Access-Control-Allow-Origin", "*");
		return service.ifBeCollected(userid,productIdList);
	}
	
	
	@RequestMapping("/operateUserCollection")
	public @ResponseBody CollectionVO operateUserCollectionOnIndex(Integer userid,Integer productid,HttpServletResponse response){
		response.setHeader("Access-Control-Allow-Origin", "*");
		System.out.println(userid);
		System.out.println(productid);
		return service.operateUserCollectionOnIndex(userid,productid);
	}
}


