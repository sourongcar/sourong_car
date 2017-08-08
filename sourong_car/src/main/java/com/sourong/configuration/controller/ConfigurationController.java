package com.sourong.configuration.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.base.common.domain.CurrentUser;
import com.base.common.domain.JsonResult;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.configuration.domain.ConfigurationVO;
import com.sourong.configuration.service.ConfigurationService;


@Controller
@RequestMapping("/configuration")
public class ConfigurationController {
	@Autowired
	private ConfigurationService service;
	
	@RequestMapping("/edit")
	public String edit(Integer id,ModelMap map){
		if(id!=null){
			map.addAttribute("entity",service.get(id));
		}
		return "configuration/edit";//跳转到编辑页面
	}
	
	@RequestMapping(value="/doEdit",method=RequestMethod.POST)
	public @ResponseBody String doEdit(@Valid ConfigurationVO entity, BindingResult br){
		//CurrentUser user = CurrentUser.getInstance();
		//entity.setCreatorUserId(user.getUserId());//创建者id
		if(br.hasErrors())
			return "failed";
		if(entity.getConfigurationid()!=null){//修改
			service.update(entity);
		}else{//新增
			service.add(entity);
		}
		return "success";//跳转到列表页面
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
		return "configuration/list";//跳转到分页查询页面
	}
	@RequestMapping("/get")
	public @ResponseBody ConfigurationVO get(Integer id){
		return service.get(id);//跳转到分页查询页面
	}
	/**
	 * datatable分页查询接口
	 * @param request
	 * @return
	 * @throws Throwable
	 */
	//@RequestMapping("/rest/doSearch")
	//public @ResponseBody DataTablesResponse<ConfigurationVO> pageSearch(
	//		@RequestBody DataTablesRequest request) throws Throwable{
	//	return service.listByPage(request);
	//}
}
