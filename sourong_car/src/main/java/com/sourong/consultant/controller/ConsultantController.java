package com.sourong.consultant.controller;

import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.base.common.domain.JsonResult;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.collection.domain.CollectionVO;
import com.sourong.collection.domain.CollectionVOExample;
import com.sourong.consultant.domain.ConsultantVO;
import com.sourong.consultant.service.ConsultantService;
import com.sourong.product.domain.ProductVO;
import com.sourong.product.service.ProductService;
import com.sourong.souronguser.domain.SouronguserVO;
import com.sourong.souronguser.service.SouronguserService;
    
@Controller
@RequestMapping("/consultant")
public class ConsultantController {
	@Autowired
	private ConsultantService  consultantService;
	@Autowired
	private SouronguserService userService;
	@Autowired
	private ProductService productServce;
	
	@RequestMapping(value="/doEdit",method=RequestMethod.POST)
	public @ResponseBody JsonResult doEdit(ConsultantVO entity){
		JsonResult rs=new JsonResult();
		int status = consultantService.update(entity);
		rs.setStatus(status);
		rs.setMsg("添加成功");
		return rs;
	}
	
	@RequestMapping("/rest/doDelete")
	public @ResponseBody JsonResult doDelete(Integer id){
		JsonResult rs=new JsonResult();
		consultantService.delete(id);
		rs.setStatus(1);
		rs.setMsg("删除成功！");
		return rs;
	}
	
	@RequestMapping("/list")
	public String list(Model model,String isRead){
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
		return consultantService.listByPage(request);
	}
	
	@RequestMapping("/markRead")
	public @ResponseBody JsonResult markRead(@RequestParam String consultantId){
		int status = consultantService.markRead(consultantId);
		JsonResult result = new JsonResult();
		result.setMsg("标记成功");
		result.setStatus(status);
		return result;
	}
	
	/**
	 * ==================================================
	 * |												|
	 * |												|
	 * |					前端交互						|	
	 * |												|
	 * |												|
	 * ==================================================
	 */
	
	@RequestMapping(value="/forMoreInformation",method=RequestMethod.POST)
	public @ResponseBody JsonResult forMoreInformation(@RequestParam(required=true) Integer carId,
			Integer userId,HttpServletResponse response){
		response.setHeader("Access-Control-Allow-Origin", "*");
		JsonResult result = new JsonResult();
		if("".equals(userId) || userId == null){
			result.setMsg("当前没有用户登陆");
			result.setStatus(0);
		}else{
			ProductVO productVO = productServce.get(carId);
			if(consultantService.canConsultAgain(userId, carId)){
				SouronguserVO souronguserVO = userService.get(userId);
				System.out.println(souronguserVO);
				ConsultantVO consultantVO = new ConsultantVO();
				consultantVO.setUserid(userId);
				consultantVO.setUserphone(souronguserVO.getUserphone());
				consultantVO.setUsername(souronguserVO.getUsername());
				consultantVO.setProductid(carId);
				consultantVO.setIsreply(0);
				consultantVO.setChangetime(new Date());
				consultantService.add(consultantVO);
				result.setMsg("当前用户：" + souronguserVO.getUsername() + "咨询登记成功");
				result.setStatus(1);
			}else{
				result.setMsg("您于24小时内咨询 此车,请勿频繁操作");
				result.setStatus(-1);
			}
		}
		return result;
	}		
}
