package com.sourong.article.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.base.common.domain.JsonResult;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourong.article.domain.ArticleVO;
import com.sourong.article.service.ArticleService;


@Controller
@RequestMapping("/article")
public class ArticleController {
	@Autowired
	private ArticleService service;
	
	@RequestMapping("/edit")
	public String edit(Integer id,ModelMap map){
		if(id!=null){
			map.addAttribute("entity",service.get(id));
		}
		return "article/edit";//跳转到编辑页面
	}
	
	@RequestMapping("/getContent")
	public  @ResponseBody String getContent(Integer articleid){
		return service.getContent(articleid);//单独获取内容
	}
	
	@RequestMapping("/doEdit")
	public String doEdit(ArticleVO entity){
		//CurrentUser user = CurrentUser.getInstance();
		//entity.setCreatorUserId(user.getUserId());//创建者id
		if(entity.getArticleid()!=null){//修改
			service.update(entity);
		}else{//新增
			service.add(entity);
		}
		return "redirect:/article/list.action";//跳转到列表页面
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
		return "article/list";//跳转到分页查询页面
	}
	/**
	 * datatable分页查询接口
	 * @param request
	 * @return
	 * @throws Throwable
	 */
	@RequestMapping("/rest/doSearch")
	public @ResponseBody DataTablesResponse<ArticleVO> pageSearch(
			@RequestBody DataTablesRequest request,HttpServletResponse response) throws Throwable{
		
		return service.listByPage(request);
	}
	/**
	 * 获取介绍页文章
	 * @param articleid
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/getArticle")
	public @ResponseBody ArticleVO forMoreInformation(@RequestParam(required=true) Integer articleid){
		return service.get(articleid) ;
	}
	/**
	 * 获取介绍页所有
	 * @return
	 */
	@RequestMapping(value="/rest/getArticletitle")
	public @ResponseBody List<ArticleVO> getAlltitle(){
		return service.getallTitle();
	}
	
	
}
