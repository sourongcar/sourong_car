package com.sourong.consultant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.base.common.domain.JsonResult;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.consultant.domain.ConsultantVO;
import com.sourong.consultant.service.ConsultantService;
    
@Controller
@RequestMapping("/consultant")
public class ConsultantController {
	@Autowired
	private ConsultantService service;
	
	@RequestMapping("/edit")
	public String edit(Integer id,ModelMap map){
		if(id!=null){
			map.addAttribute("entity",service.get(id));
		}
		return "consultant/edit";//跳转到编辑页面
	}
	
	@RequestMapping(value="/doEdit",method=RequestMethod.POST)
	public @ResponseBody JsonResult doEdit(ConsultantVO entity){
		System.out.println(entity);
		JsonResult rs=new JsonResult();
		int status = service.update(entity);
		rs.setStatus(status);
		rs.setMsg("添加成功");
		return rs;
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
	public String list(Model model,String isRead){
		System.out.println(isRead);
		model.addAttribute("isRead", isRead);
		return "consultant/list";//跳转到分页查询页面
	}
	/**
	 * datatable分页查询接口
	 * @param request
	 * @return
	 * @throws Throwable
	 */
	@RequestMapping("/rest/doSearch")
	public @ResponseBody DataTablesResponse<ConsultantVO> pageSearch(
			@RequestBody DataTablesRequest request) throws Throwable{
		return service.listByPage(request);
	}
	
	@RequestMapping("/markRead")
	public @ResponseBody JsonResult markRead(@RequestParam String consultantId){
		int status = service.markRead(consultantId);
		JsonResult result = new JsonResult();
		result.setMsg("标记成功");
		result.setStatus(status);
		return result;
	}
}
