package com.sourong.brand.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.base.common.domain.CurrentUser;
import com.base.common.domain.JsonResult;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.brand.domain.BrandVO;
import com.sourong.brand.service.BrandService;
import com.sourong.cartype.domain.CartypeVO;
import com.sourong.cartype.service.CartypeService;


@Controller
@RequestMapping("/brand")
public class BrandController {
	@Autowired
	private BrandService service;
	@Autowired
	private CartypeService carservice;
	
	@RequestMapping("/edit")
	public String edit(Integer brandid,ModelMap map){
		if(brandid!=null){
			map.addAttribute("brandVO",service.get(brandid));
		}
		return "brand/edit";//跳转到编辑页面
	}
	
	@RequestMapping("/doEdit")
	public String doEdit(BrandVO brandVO){
		CurrentUser user = CurrentUser.getInstance();
		//entity.setCreatorUserId(user.getUserId());//创建者id
		if(brandVO.getBrandid()!=null){//修改
			brandVO.setChangetime(new Date());//最后修改时间（取当前系统时间）
			service.update(brandVO);
		}else{//新增
			brandVO.setCreatetime(new Date());//取创建时的时间
			brandVO.setChangetime(new Date());//最后修改时间（取当前系统时间）
			service.add(brandVO);
		}
		return "redirect:/brand/list.action";//跳转到列表页面
	}
	
	@RequestMapping("/rest/doDelete")
	public @ResponseBody JsonResult doDelete(Integer brandid){
		JsonResult rs=new JsonResult();
		service.delete(brandid);
		rs.setStatus(1);
		rs.setMsg("删除成功！");
		return rs;
	}
	
	@RequestMapping("/list")
	public String list(){
		return "brand/list";//跳转到分页查询页面
	}
	
	
	/**
	 * datatable分页查询接口
	 * @param request
	 * @return
	 * @throws Throwable
	 */
	@RequestMapping("/rest/doSearch")
	public @ResponseBody DataTablesResponse<BrandVO> pageSearch(
			@RequestBody DataTablesRequest request) throws Throwable{
		return service.listByPage(request);
	}
    
	@RequestMapping("/getList")
	public @ResponseBody List<CartypeVO> getList(Integer brandid){	
		return carservice.getByBrandid(brandid);
	}
	
	/*
	 * 通过品牌编号brandid查找查找相应的车型
	 * */
	@RequestMapping("/getCartype")
	public String getCartype(Integer brandid,ModelMap map){
		map.addAttribute("brandid", brandid);
		return "brand/cartypelist";//跳转到相应的车型分页查询页面
	}
	
}
