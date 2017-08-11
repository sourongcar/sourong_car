<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>介绍页面编辑页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_picupload_css.jsp"%>
<body>
<h2 style="text-align:center;margin-top:5%">介绍页面管理</h2>
<div class="container" style="margin-top:5%">
     <div class="row clearfix">
			<div class="col-md-12 column">
	<form class="form-horizontal" role="form" action="${path }/article/doEdit.action" method="post">
	<input type="hidden" name="articleid" value="${entity.articleid}">
	<div class="form-group">
		<label for="title" class="col-sm-2 control-label">标题</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="title" name="title" value="${entity.title}"
				   placeholder="请输入标题">
		</div>
	</div>
	<div class="form-group">
		<label for="type" class="col-sm-2 control-label">类型</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="type" name="type" value="${entity.type}"
			 style="display:none" >
			 <p  id="typename" name="typename" style="margin-top:5px;"></p>
		</div>
	</div>
	<div class="form-group">
		<label for="content" class="col-sm-2 control-label">内容</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="content" name="content" value=""
			 placeholder="请输入内容" style="display:none">
				   <button class="btn btn-primary btn-sm"  data-toggle="modal" data-target="#myModal" id="checkeditor">查看并修改</button>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary">提交</button>
			<a href="${path }/article/list.action" class="btn btn-default">返回</a>
		</div>
	</div>
	</form>
			</div>
		</div>
	</div>
<!-- 模态框（Modal） -->
<div class="modal fade" style="z-index:15" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="left:0px;;height:600px">
        <div class="modal-content" style="height:600px" >
           <div class="modal-body" style="height:600px">
					<table>
						 <h1 style="text-align:center">编辑内容</h1>
               <script id="editor" type="text/plain" ></script>             
					</table>
					<button class="btn btn-primary btn-sm" style="margin-top:10px;margin-left:40%" data-dismiss="modal" id="savecontent">保存</button>
					<button class="btn btn-primary btn-sm" style="margin-top:10px" data-dismiss="modal">取消</button>
				</div>           
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>	
<%-- <%@ include file="/WEB-INF/pages/common/rs_js.jsp"%> --%>
	<%@ include file="/WEB-INF/pages/common/rs_picupload_js.jsp"%>
<%@ include file="/WEB-INF/pages/common/baiduEditor_js.jsp"%>
<script type="text/javascript">
		jQuery(function($) {
			//实例化编辑器
		    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
			 var ue = UE.getEditor('editor',{
				 initialFrameHeight:350,//设置编辑器高度
				 scaleEnabled:true//设置不自动调整高度
				 //scaleEnabled {Boolean} [默认值：false]//是否可以拉伸长高，(设置true开启时，自动长高失效)
				 });
			if("${entity.type}"==0){
				$('#typename').text("关于搜融");
			}else if("${entity.type}"==1){
				$('#typename').text("产品介绍");
			}else if("${entity.type}"==2){
				$('#typename').text("合作车行");
			}			
	});
		 $.ajax({  
	          type:'post',      
	         url:'${path }/article/getContent.action',  
	          data:{
	        	  articleid:"${entity.articleid}"
	          } ,  
	          dataType:'json',  
	         success:function(data){ 
	        	 $("#content").val(data);
	        	  
	          }  
	      });
		
	$("#checkeditor").click(function(){
		 UE.getEditor('editor').setHeight(350);
		//将数据库的content内容获取到编辑器中		
		 UE.getEditor('editor').setContent( $("#content").val());
	})    
    $("#savecontent").click(function(){
    	$("#content").val(UE.getEditor('editor').getContent()); 	
    })
</script>
	
</body>
</html>