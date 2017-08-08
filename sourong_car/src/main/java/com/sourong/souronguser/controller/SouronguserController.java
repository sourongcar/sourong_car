package com.sourong.souronguser.controller;

import javax.servlet.http.HttpServletResponse;

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
	public @ResponseBody JsonResult getSalt(@RequestParam(required = true) String phone,HttpServletResponse res) {
		res.setHeader("Access-Control-Allow-Origin", "*");
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
			@RequestParam(required = true) String password,HttpServletResponse res) {
		res.setHeader("Access-Control-Allow-Origin", "*");
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

	public static void main(String[] args) throws Exception {
		String uuid = IDUtil.uuid();
		System.out.println(uuid);
		System.out.println(MD5Util.md5("123" + uuid));
	}
	
}
