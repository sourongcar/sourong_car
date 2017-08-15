package com.sourong.brand.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.base.common.domain.JsonResult;
import com.base.common.util.ConfigUtil;
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
	
	@RequestMapping(value="/doEdit",method=RequestMethod.POST,consumes={"multipart/form-data"})
	public String doEdit(Integer brandid,BrandVO brandVO,@RequestParam(value="pic")MultipartFile file) throws IllegalStateException, IOException{
		//CurrentUser user = CurrentUser.getInstance();
		String saveImage = ConfigUtil.getValue("saveImage");
		if(brandVO.getBrandid()!=null){//修改
			brandVO.setChangetime(new Date());//最后修改时间（取当前系统时间）
			BrandVO br=service.get(brandid);
			String picname=br.getBrandpic();
			if(picname!=null){
				new File(ConfigUtil.getValue("saveImage")+picname).delete();//删除原先的图片
			}
			if(!file.isEmpty()){	
				String orgname=file.getOriginalFilename();
				String savename=UUID.randomUUID()+orgname.substring(orgname.lastIndexOf("."));//保存图片的名字唯一
				String savepath=saveImage+savename;
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(savepath));//图片存放位置
				file.transferTo(new File(savepath));
				brandVO.setBrandpic(savename);
			}
			
             service.update(brandVO);
		}else{//新增
			brandVO.setCreatetime(new Date());//取创建时的时间
			brandVO.setChangetime(new Date());//最后修改时间（取当前系统时间）
			if(!file.isEmpty()){	
				String orgname=file.getOriginalFilename();
				String savename=UUID.randomUUID()+orgname.substring(orgname.lastIndexOf("."));//保存图片的名字唯一
				String savepath=saveImage+savename;
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(savepath));//图片存放位置
				file.transferTo(new File(savepath));
				brandVO.setBrandpic(savename);
			}
             service.add(brandVO);
			
		}
		return "redirect:/brand/list.action";//跳转到列表页面
	}
	
	/* 删除品牌
	 * 同时删除文件夹下的图片
	 * 和将其对应的所有车型删除*/
	@RequestMapping("/rest/doDelete")
	public @ResponseBody JsonResult doDelete(Integer brandid) throws Throwable{
		JsonResult rs=new JsonResult();
		BrandVO brandVO=service.get(brandid);
		String picname=brandVO.getBrandpic();
		if(picname!=null){	
			new File(ConfigUtil.getValue("saveImage")+picname).delete();
		}
		service.delete(brandid);
		List<CartypeVO> list=carservice.getByBrandid(brandid);
		for(CartypeVO cartype:list){
			int id=cartype.getBrandid();
			carservice.deleteType(id);
		}
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
	 * 通过品牌编号brandid查找查找品牌和相应的车型
	 * */
	@RequestMapping("/getCartype")
	public String getCartype(Integer brandid,ModelMap map){
		BrandVO brandVO=service.get(brandid);
		map.addAttribute("brandVO", brandVO);
		return "brand/cartypelist";//跳转到相应的车型分页查询页面
	}
	
	
	@RequestMapping("/weblist")
	public @ResponseBody List<BrandVO> getlist() throws Throwable{
		return service.list();
	}
}
