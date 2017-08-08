package com.sourong.carpicture.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.base.common.domain.CurrentUser;
import com.base.common.domain.JsonResult;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.carpicture.domain.CarpictureVO;
import com.sourong.carpicture.service.CarpictureService;


@Controller
@RequestMapping("/carpicture")
public class CarpictureController {
	
	@Autowired
	private CarpictureService service;
	
	@RequestMapping("/edit")
	public String edit(Integer id,ModelMap map){
		if(id!=null){
			map.addAttribute("entity",service.get(id));
		}
		return "carpicture/edit";//跳转到编辑页面
	}
	

	
	@RequestMapping("/doEdit")
	
	//id
	public String doEdit(CarpictureVO entity){
		//CurrentUser user = CurrentUser.getInstance();
		//entity.setCreatorUserId(user.getUserId());//创建者id
		
		if(entity.getCarpictureid()!=null){//修改
			service.update(entity);
		}else{//新增
			service.add(entity);
		}
		return "redirect:/carpicture/list.action";//跳转到列表页面
	}
	
	
	public String doUpload(MultipartFile  picture) throws IllegalStateException, IOException{
		String orgname=picture.getOriginalFilename();
		String savename=UUID.randomUUID()+orgname.substring(orgname.lastIndexOf("."));
		String savepath="d:/apps/"+savename;
		picture.transferTo(new File(savepath));
		
		return "redirect:http://localhost:8080/images/"+savename;
		
	}
	
	/*
	//图片id
	public String dozp(CarpictureVO entity){
		if(entity.getProductid()!=null){
			service.update(entity);
		}else{
			service.add(entity);
		}
		return "redirect:/carpicture/list.action";//跳转到列表页面
	}
	//图片地址
	public String dourl(CarpictureVO entity){
		if(entity.getPicture()!=null){
			service.update(entity);
			
		}else{
			service.add(entity);
		}
		return "redirect:/carpicture/list.action";//跳转到列表页面
	}*/
	
	//删除(根据id)
	@RequestMapping("/rest/doDelete")
	public @ResponseBody JsonResult doDelete(Integer id){
		JsonResult rs=new JsonResult();
		service.delete(id);
		rs.setStatus(1);
		rs.setMsg("删除成功！");
		return rs;
	}
	
	@RequestMapping("/list")
	public String list(){
		return "carpicture/list";//跳转到分页查询页面
	}
	/**
	 * datatable分页查询接口
	 * @param request
	 * @return
	 * @throws Throwable
	 */
	@RequestMapping("/rest/doSearch")
	public @ResponseBody DataTablesResponse<CarpictureVO> pageSearch(
			@RequestBody DataTablesRequest request) throws Throwable{
		return service.listByPage(request);
	}
}
