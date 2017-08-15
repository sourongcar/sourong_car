<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>车型编辑页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="${path}/resources/css/common.css" type="text/css" rel="stylesheet">
<link href="${path}/resources/css/index.css" type="text/css" rel="stylesheet">
<link href="${path}/resources/assets/css/bootstrap.min.css" type="text/css" rel="stylesheet">

</head>
<body>

<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
	<form id="formid" class="form-horizontal" role="form" action="${path }/brand/doEdit.action"  method="post" enctype="multipart/form-data">
	<input type="hidden" name="brandid" value="${brandVO.brandid}">
			<div class="form-group">
				<label for="brandname" class="col-sm-2 control-label">品牌名</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="brandname" name="brandname" value="${brandVO.brandname}"
						   placeholder="请输入品牌名">
				</div>
			</div>
			<div class="form-group">
				<label for="brandpic" class="col-sm-2 control-label">品牌图标</label>
				<div class="col-sm-10">
				<span style="display:inline;padding-left: 10px;color: #999">只允许上传图片</span>
				<input style="display: inline;" type="file" name="pic" id="pic" onchange="previewFile()" /> 
				</div>
				<div class="col-sm-10" style="margin-top: 30px">
					<img src="/images/${brandVO.brandpic}"  class="img-thumbnail" style="max-width: 300px;max-height: 500px"  alt="Image preview..."/>   
							
				</div> 
				
		         </div>			
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary">提交</button>
			<a href="${path }/brand/list.action" class="btn btn-default">返回</a>
		</div>
	</div>
	</form>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%>
	<script type="text/javascript">
	 function previewFile() {
		 var preview = document.querySelector('img');
		 var file  = document.querySelector('input[type=file]').files[0];
		 var reader = new FileReader();
		 reader.onloadend = function () {
		  preview.src = reader.result;
		 }
		 if (file) {
		  reader.readAsDataURL(file);
		 } else {
		  preview.src = "";
		 }
		} 
	
		</script>
<script type="text/javascript" src="${path}/resources/assets/js/jquery-3.2.1.min.js"></script>	
<script type="text/javascript" src="${path}/resources/assets/js/bootstrap.min.js"></script>		
</body>
</html>