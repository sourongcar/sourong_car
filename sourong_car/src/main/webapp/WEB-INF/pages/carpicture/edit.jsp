<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>xx编辑页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>

<%@ include file="/WEB-INF/pages/common/imageUploadUtil_css.jsp"%>

<body>
<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
			
		<!--汽车图片id-->
	<form class="form-horizontal" role="form" action="${path }/carpicture/doEdit.action" method="post">
	<input type="hidden" name="id" value="${entity.carpictureid }">
	
 	    <div class="form-group">
		<label for="carpictureid" class="col-sm-2 control-label">汽车图片ID</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="carpictureid" name="carpictureid" value="carpictureid"
				   placeholder="请输入carpictureid">
		</div>
	</div>
	
	<!--图片ID-->
	<div class="form-group">
		<label for="productid" class="col-sm-2 control-label">图片ID</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="productid" name="productid" value="${entity.productid}"
				   placeholder="请输入productid">
		</div>
	</div>
	
	
	<!-- 图片上传 -->
	<div class="form-group">
		<label for="picture" class="col-sm-2 control-label">图片上传</label>
		<div class="col-sm-10">

			<div class="col-md-12">
				<input type="file" multiple id="ssi-upload" placeholder="（支持jpg、gif、txt、png和pdf格式文件）">
			</div>
		</div>
	</div>


	
		<!-- 附件上传 
			<form  method="post" enctype="multipart/form-data">
	        <input type="file" name="picture"  id="picture" value="${entity.picture}" >
					-->
<%-- 	
			<input type="text" class="form-control" id="picture" name="picture" value="${entity.picture}"
				   placeholder="请输入picture"> --%>

<!-- 是否轮播 
	<div class="form-group">
		<label for="islooping" class="col-sm-2 control-label">是否轮播</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="islooping" name="islooping" value="islooping"
				   placeholder="0代表是1代表否">
		</div>
	</div>
	-->
	
	<!--  时间自动生成
 	<div class="form-group">
		<label for="createtime" class="col-sm-2 control-label">createtime</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="createtime" name="createtime" value="createtime"
				   placeholder="请输入createtime">
		</div>
	</div>
	<div class="form-group">
		<label for="changetime" class="col-sm-2 control-label">changetime</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="changetime" name="changetime" value="changetime"
				   placeholder="请输入changetime">
		</div>
	</div>  
     -->
     
     
     
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary">提交</button>
			<a href="${path }/carpicture/list.action" class="btn btn-default">返回</a>
		</div>
	</div>
	</form>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%>
	<%@ include file="/WEB-INF/pages/common/imageUploadUtil_js.jsp"%>
	<script type="text/javascript">
		jQuery(function($) {
			
		});
	</script>
	
	<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="js/ssi-uploader.js"></script>
<script type="text/javascript">
	$('#ssi-upload').ssi_uploader({url:'#',maxFileSize:6,allowed:['jpg','gif','txt','png','pdf']});
	$('#ssi-upload2').ssi_uploader({url:'#',preview:false,allowed:['jpg','gif','txt','png','pdf']});
	$('#ssi-upload3').ssi_uploader({url:'#',dropZone:false,allowed:['jpg','gif','txt','png','pdf']});
</script>

</body>
</html>