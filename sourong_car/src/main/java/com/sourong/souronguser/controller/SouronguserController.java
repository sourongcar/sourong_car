package com.sourong.souronguser.controller;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.base.common.domain.JsonResult;
import com.base.common.util.IDUtil;
import com.base.common.util.MD5Util;
import com.sourong.souronguser.domain.SouronguserVO;
import com.sourong.souronguser.service.SouronguserService;

@Controller
@RequestMapping("/souronguser")
public class SouronguserController {
	@Autowired
	private SouronguserService service;

	
	@RequestMapping("/getUUID")
	public @ResponseBody JsonResult getUUID() {
		JsonResult rs = new JsonResult();
		rs.setStatus(1);
		rs.setMsg(IDUtil.uuid());
		return rs;
	}
	
	
	@RequestMapping("/getSalt")
	public @ResponseBody JsonResult getSalt(@RequestParam(required = true) String phone) {
		JsonResult rs = new JsonResult();
		SouronguserVO souronguser = service.getUserFormPhone(phone);
		if(souronguser != null){
			System.out.println(souronguser.toString());
			rs.setStatus(souronguser.getUserid());
			rs.setMsg(souronguser.getSalt());
			return rs;
		}
		rs.setStatus(-1);
		rs.setMsg("");
		return rs;
	}
	
	
	
	@RequestMapping("/doLogin")
	public @ResponseBody JsonResult doLogin(@RequestParam(required = true) Integer userid,
			@RequestParam(required = true) String password) {
		JsonResult rs = new JsonResult();
		if(userid != null && !StringUtils.isEmpty(password)){
			SouronguserVO souronguser = service.get(userid);
			if(souronguser != null){	
				if(souronguser.getPassword().equals(password)){
					rs.setStatus(1);
					rs.setMsg("success");
					return rs;
				}
			}
		}
		rs.setStatus(0);
		rs.setMsg("lose");
		return rs;
	}
	@RequestMapping(value="/register")
	public @ResponseBody JsonResult register(SouronguserVO souronguser){
		JsonResult rs = new JsonResult() ;
		SouronguserVO user = service.getUserFormPhone(souronguser.getUserphone());
		if(user==null){
			service.add(souronguser) ;
			System.out.println(souronguser.getUserid());
			rs.setStatus(souronguser.getUserid());
			rs.setMsg("注册成功");
			return rs ;
		}else{		
			rs.setStatus(0);
			rs.setMsg("您已经注册");
			return rs;
		}
	}

	public static void main(String[] args) throws Exception {
		/*String uuid = IDUtil.uuid();
		System.out.println(uuid);*/
		System.out.println(MD5Util.md5("123"+"86aa7869ca07421898acfd69c7732e89"));
	}
	
}
