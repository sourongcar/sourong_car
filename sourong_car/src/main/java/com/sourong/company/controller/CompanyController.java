package com.sourong.company.controller;


import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.base.common.domain.CurrentUser;
import com.base.common.domain.JsonResult;
import com.base.common.util.ConfigUtil;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.company.domain.CompanyVO;
import com.sourong.company.service.CompanyService;


@Controller
@RequestMapping("/company")
public class CompanyController {
	@Autowired
	private CompanyService service;
	
	@RequestMapping("/edit")
	public String edit(Integer id,ModelMap map){
		if(id!=null){
			map.addAttribute("entity",service.get(id));
		}
		return "company/edit";//跳转到编辑页面
	}
	
	@RequestMapping(value="/doEdit",method = RequestMethod.POST)
	public String doEdit(CompanyVO entity,@RequestParam(value = "file", required = false)MultipartFile file) throws Throwable{
		     String lastpicname = entity.getCompanyqr();
		     String path = ConfigUtil.getValue("saveImage");
		     int a = 0;//定义一个整数作为判断是否需要删除文件
		if(!file.isEmpty()){
			String fileformat =file.getOriginalFilename().substring(file.getOriginalFilename().indexOf("."));
			String picname= UUID.randomUUID()+fileformat;
			entity.setCompanyqr(picname);
			file.transferTo(new File(path+"\\"+picname));
			a=1;//因为有新的文件输入，所以需要删除旧的文件。
		}
		//entity.setCreatorUserId(user.getUserId());//创建者id
		if(entity.getCompanyid()!=null){//修改
			service.update(entity);
		}else{//新增
			service.add(entity);
		}
		if(a==1){
			//删除旧文件
		    File lastfile = new File(path+"\\"+lastpicname);
		    lastfile.delete();
		}
		return "redirect:/company/list.action";//跳转到列表页面
	}
	
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
		return "company/list";//跳转到分页查询页面
	}
	/**
	 * datatable分页查询接口
	 * @param request
	 * @return
	 * @throws Throwable
	 */
	@RequestMapping("/rest/doSearch")
	public @ResponseBody DataTablesResponse<CompanyVO> pageSearch(
			@RequestBody DataTablesRequest request) throws Throwable{
		return service.listByPage(request);
	}
}
