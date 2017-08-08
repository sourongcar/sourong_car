package com.sourong.product.controller;

import java.io.File;
import java.util.List;

import javax.validation.Valid;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.base.common.domain.JsonResult;
import com.base.common.util.ConfigUtil;
import com.base.common.util.IDUtil;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.brand.service.BrandService;
import com.sourong.cartype.service.CartypeService;
import com.sourong.product.domain.ProductVO;
import com.sourong.product.domain.ProductVOExample;
import com.sourong.product.service.ProductService;


@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private ProductService service;
	@Autowired
	private BrandService brandService;
	@Autowired
	private CartypeService cartypeService;
	
	@RequestMapping("/edit")
	public String edit(Integer id,ModelMap map){
		List<String> brandNames=brandService.names();
		map.addAttribute("brands",brandNames);
		if(id!=null){
			ProductVO entity=service.get(id);
			Integer hit=entity.getHit();
			if(hit!=0&&service.countOfHit(0)>=4){//首页限制4个
				map.addAttribute("headfull",true);
			}
			if(hit!=1&&service.countOfHit(1)>=6){//热门限制6个
				map.addAttribute("hotfull",true);
			}
			map.addAttribute("cartypes",cartypeService.of(entity.getBrandname()));
			map.addAttribute("entity",entity);
		}
		else{
			if(service.countOfHit(0)>=4){//首页限制4个
				map.addAttribute("headfull",true);
			}
			if(service.countOfHit(1)>=6){//热门限制6个
				map.addAttribute("hotfull",true);
			}
			map.addAttribute("cartypes",cartypeService.of(brandNames.get(0)));
		}
		return "product/edit";//跳转到编辑页面
	}
	
	@RequestMapping(value="/doEdit",method=RequestMethod.POST)
	public String doEdit(@Valid ProductVO entity, BindingResult br,MultipartFile cover) throws Exception{
		//CurrentUser user = CurrentUser.getInstance();
		//entity.setCreatorUserId(user.getUserId());//创建者id
		if(br.hasErrors())
			throw new Exception(br.getFieldError().getDefaultMessage());
		int result=0;
		if(cover!=null&&cover.getSize()>0){
			System.out.println(cover.getSize()+"--"+cover.getContentType());
			if(cover.getSize()>(1024*512))
				throw new IllegalArgumentException("图片文件太大");
			switch(cover.getContentType()){
			case "image/jpeg": case "image/png": case "image/gif":break;
			default:
				throw new IllegalArgumentException("图片类型错误");
			}
			String desPath=ConfigUtil.getValue("saveImage")+IDUtil.uuid()+'.'+FilenameUtils.getExtension(cover.getOriginalFilename());
			cover.transferTo(new File(desPath));
			entity.setCoverpic(desPath);
		}
		if(entity.getProductid()!=null){//修改
			result=service.update(entity);
		}else{//新增
			result=service.add(entity);
		}
		if(result==1)
		return "redirect:/product/list.action";//跳转到列表页面
		else throw new Exception("修改失败");
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
		return "product/list";//跳转到分页查询页面
	}
	/**
	 * datatable分页查询接口
	 * @param request
	 * @return
	 * @throws Throwable
	 */
	@RequestMapping("/rest/doSearch")
	public @ResponseBody DataTablesResponse<ProductVO> pageSearch(
			@RequestBody DataTablesRequest request) throws Throwable{
		return service.listByPage(request);
	}
	
	@RequestMapping("/toggleVisibility")
	public @ResponseBody String toggleVisibility(Integer id) throws Throwable{
		if(service.changeVisibility(id)==1){
			return "success";
		}
		return "fail";
	}
	
}
