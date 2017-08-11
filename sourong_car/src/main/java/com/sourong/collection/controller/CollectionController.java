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
	public @ResponseBody CollectionVO operateUserCollection(@RequestParam(required=true)Integer userid,@RequestParam(required=true)Integer productid,HttpServletResponse response){
		response.setHeader("Access-Control-Allow-Origin", "*");
		return service.operateUserCollectionOnIndex(userid,productid);
	}
}


