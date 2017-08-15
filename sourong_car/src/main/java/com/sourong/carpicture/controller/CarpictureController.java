package com.sourong.carpicture.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

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
import com.sourong.carpicture.domain.CarpictureVO;
import com.sourong.carpicture.service.CarpictureService;

@Controller
@RequestMapping("/carpicture")
public class CarpictureController {

	@Autowired
	private CarpictureService service;

	//@RequestMapping("/edit")
	public String edit(@RequestParam(value = "productid", required = false) Integer productid, ModelMap map) {
		if (productid != null) {
			map.addAttribute("entity", service.get(productid));
			map.addAttribute("productid", productid);
		}
		return "carpicture/edit";// 跳转到编辑页面
	}

	// 轮播判断
	@RequestMapping("/islooping")
	public @ResponseBody String islooping(CarpictureVO entity, String carpictureid, String islooping) {
		if (carpictureid != null) {
			if ("0".equals(islooping)) {
				entity.setIslooping(1);
				service.update(entity);
			} else if ("1".equals(islooping)) {
				entity.setIslooping(0);
				service.update(entity);
			}
		}
		return service.get(Integer.parseInt(carpictureid)).getIslooping().toString();// 跳转到列表页面
	}

	// 上传图片并提交数据到数据库
	@RequestMapping(value = "/doEdit", method = RequestMethod.POST, consumes = { "multipart/form-data" })
	public String doEdit(MultipartFile file, CarpictureVO entity) {
		// 图片上传
		if (file != null) {
			// 判断原来的picture是否为空
			//if (entity.getPicture() != null || entity.getPicture() != "") {
				// 为空则进行删除
				//System.out.println("获取原来图片信息进行删除");
				//File deletefile = new File(ConfigUtil.getValue("saveImage") + entity.getPicture());
				//deletefile.delete();
				//System.out.println("删除成功");
			//}
			
			if (file.getSize() > 0) {
				String fileName = file.getOriginalFilename();
				// 打印信息
				int index = fileName.lastIndexOf(".");
				String savename = UUID.randomUUID() + (index > 0 ? fileName.substring(fileName.lastIndexOf(".")) : "");
				String savenpath = ConfigUtil.getValue("saveImage") + savename;
				
				try {
					file.transferTo(new File(savenpath));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				// 提交数据库，修改，新增
				if (entity.getCarpictureid() != null) {// 修改
					File deletefile = new File(ConfigUtil.getValue("saveImage") + entity.getPicture());
					deletefile.delete();
					// 把读取到的图片路径存进数据库
					entity.setPicture(savename);
					service.update(entity);
				} else {// 新增
					// 把读取到的图片路径存进数据库
					entity.setPicture(savename);
					entity.setIslooping(1);
					service.add(entity);
				}
			}
		}
		return "redirect:/carpicture/list.action?productid="+entity.getProductid();// 跳转到列表页面

	}

	// 删除(根据id)
	@RequestMapping("/rest/doDelete")
	public @ResponseBody JsonResult doDelete(Integer id) {
		JsonResult rs = new JsonResult();
		service.delete(id);
		rs.setStatus(1);
		rs.setMsg("删除成功！");
		return rs;
	}

	@RequestMapping("/list")
	public String list(ModelMap map, @RequestParam(value = "productid", required = false) Integer productid) {
		map.addAttribute("productid", productid);
		return "carpicture/list";// 跳转到分页查询页面
	}

	/**
	 * datatable分页查询接口
	 * 
	 * @param request
	 * @return
	 * @throws Throwable
	 */
	@RequestMapping("/rest/doSearch")
	public @ResponseBody DataTablesResponse<CarpictureVO> pageSearch(@RequestBody DataTablesRequest request)
			throws Throwable {
		return service.listByPage(request);
	}

	@RequestMapping("/rest/getFull")
	public @ResponseBody List<CarpictureVO> getFull(Integer productid) {
		if (productid == null) {
			return null;
		}
		return service.listFull(productid);
	}
	
	@RequestMapping("/rest/count")
	public @ResponseBody int getcount(Integer productid) {
		if (productid == null) {
			return 0;
		}
		return service.count(productid);
	}
}
