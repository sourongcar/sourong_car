package com.sourong.cartype.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.base.common.domain.JsonResult;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.brand.domain.BrandVO;
import com.sourong.brand.service.BrandService;
import com.sourong.cartype.domain.CartypeVO;
import com.sourong.cartype.service.CartypeService;


@Controller
@RequestMapping("/cartype")
public class CartypeController {
	@Autowired
	private CartypeService service;
	@Autowired
	private BrandService brandservice;
	@RequestMapping("/edit")
	public String edit(Integer cartypeid,ModelMap map) throws Throwable{
		if(cartypeid!=null){
			Integer brandid=service.get(cartypeid).getBrandid();
			BrandVO brvo=brandservice.get(brandid);
			map.addAttribute("brandname", brvo.getBrandname());
			map.addAttribute("cartypeVO",service.get(cartypeid));
		}
		return "cartype/edit";//跳转到编辑页面
	}
	
	@RequestMapping("/doEdit")
	public String doEdit(String brandname,CartypeVO cartypeVO,ModelMap map) throws Throwable{
		//CurrentUser user = CurrentUser.getInstance();
		if(cartypeVO.getCartypeid()!=null){//修改		
			service.update(cartypeVO);
		}else{//新增
			Integer brandid=Integer.parseInt(brandname);
			cartypeVO.setBrandid(brandid);
			service.add(cartypeVO);
		}
		return "redirect:/cartype/list.action";//跳转到列表页面
		}
		
	@RequestMapping("/docarEdit")
	public String docarEdit(CartypeVO cartypeVO) throws Throwable{
		service.add(cartypeVO);
		return "redirect:/brand/getCartype.action?brandid="+cartypeVO.getBrandid();
	}

	@RequestMapping("/docarupdate")
	public String docarupdate(CartypeVO cartypeVO) throws Throwable{
		service.update(cartypeVO);
		return "redirect:/brand/getCartype.action?brandid="+cartypeVO.getBrandid();
	}
	@RequestMapping("/rest/doDelete")
	public @ResponseBody JsonResult doDelete(Integer cartypeid){
		JsonResult rs=new JsonResult();
		service.delete(cartypeid);
		rs.setStatus(1);
		rs.setMsg("删除成功！");
		return rs;
	}
	
	@RequestMapping("/list")
	public String list(ModelMap map) throws Throwable{
		List<BrandVO> list = brandservice.list();
		map.addAttribute("list", list);
		return "cartype/list";//跳转到分页查询页面
	}
	/**
	 * datatable分页查询接口
	 * @param request
	 * @return
	 * @throws Throwable
	 */
	@RequestMapping("/rest/doSearch")
	public @ResponseBody DataTablesResponse<CartypeVO> pageSearch(
			@RequestBody DataTablesRequest request) throws Throwable{
		return service.listByPage(request);
	}
	
	@RequestMapping("/ofBrand")
	public @ResponseBody List<String> ofBrandName(String brandName) throws Throwable{
		return service.of(brandName);
	}
	
}
