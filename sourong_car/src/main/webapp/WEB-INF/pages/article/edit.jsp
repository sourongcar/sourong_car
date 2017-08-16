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
<h2 style="margin-top:5%">介绍页面管理</h2>
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
							<input type="text" class="form-control" id="content"
								name="content" value="" placeholder="请输入内容"
								style="display: none">
							
							<button class="btn btn-primary btn-sm" data-toggle="modal"
								data-target="#myModal" id="checkeditor" style="margin-top:2%">查看并修改</button>
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
    <div class="modal-dialog" style="left:0px;">
        <div class="modal-content" style="text-align: center;" >
           <div class="modal-body" style="text-align: center;">
					
					 <h1 style="text-align:center;margin-bottom:5%">编辑内容</h1>
                     <script id="editor" type="text/plain" ></script>             
					
			<div class="modal-footer" >
					<button class="btn btn-primary btn-sm" style="margin-top:10px;margin-left:40%" data-dismiss="modal" id="savecontent">保存</button>
					<button class="btn btn-primary btn-sm" style="margin-top:10px" data-dismiss="modal" id="cancelcontent">取消</button>
			</div>
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
			 var ue = UE.getEditor('editor', {
			    toolbars: [
			        ['forecolor','bold','|','fontsize', 'fontfamily','|','undo', 'redo', '|']
			    ],
			    autoHeightEnabled: true,
			    autoFloatEnabled: true,
			    initialFrameHeight:300,
			    scaleEnabled:true,       //不自动调整高度   
			     wordCount:true          //是否开启字数统计
			    , elementPathEnabled : false,//不显示元素路径
		        maximumWords:5000       //允许的最大字符数
		        //字数统计提示，{#count}代表当前字数，{#leave}代表还可以输入多少字符数,留空支持多语言自动切换，否则按此配置显示
		        ,wordCountMsg:'<span style="color:red;">当前已输入 {#count} 个字符，您还可以输入{#leave} 个字符</span>'   
		        ,wordOverFlowMsg:'<span style="color:red;">你输入的字符个数已经超出最大允许值 ，服务器可能会拒绝保存！</span>'    
			});
			
			if("${entity.type}"==0){
				$('#typename').text("关于搜融");
			}else if("${entity.type}"==1){
				$('#typename').text("产品介绍");
			}else if("${entity.type}"==2){
				$('#typename').text("合作车行");
			}		
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
	});
		 
		var contentsetnum =0
		
	$("#checkeditor").click(function(){
		 var widt =$(".modal-body").height();
		 var width =document.getElementsByClassName("modal-body").offsetWidth;
		 if( contentsetnum==0){
		//将数据库的content内容获取到编辑器中	
		 UE.getEditor('editor').setContent( $("#content").val());
		 }
		    contentsetnum =1;
	})    
    $("#savecontent").click(function(){
    	$("#content").val(UE.getEditor('editor').getContent()); 	
    })
    
    $("#cancelcontent").click(function(){
    	   UE.getEditor('editor').setContent( $("#content").val());
    })
</script>
	
</body>
</html>