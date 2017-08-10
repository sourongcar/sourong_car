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


				<form class="form-horizontal" role="form"
					action="${path}/carpicture/doEdit.action" method="post"
					enctype="multipart/form-data">
				<input type="hidden" name="carpictureid" value="${entity.carpictureid }">
 					
				
					
					<!--产品ID-->
					<div class="form-group">
						<label for="productid" class="col-sm-2 control-label">图片ID</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="productid"
								name="productid" value="${entity.productid}"
								placeholder="请输入产品ID">
						</div>
					</div>
					
					
					<!-- 图片上传2 -->
					<div class="form-group">
						<label for="picture" class="col-sm-2 control-label">图片上传</label>
						<section class=" img-section">
							<div class="z_photo upimg-div clear">
							<input type="text" class="form-control" id="picture"
								name="picture" value="${entity.picture}" style="display:none">
								<section class="z_file fl">
									<img src="${path}/resources/assets/images/img/a11.png" class="add-img">
									 <input type="file" name="pictures" id="picture" class="file"
										accept="image/jpg,image/jpeg,image/png,image/bmp"  multiple="multiple" />
								</section>
							</div>
						</section>
					</div>
					<aside class="mask works-mask">
						<div class="mask-content">
							<p class="del-p">您确定要删除作品图片吗？</p>
							<p class="check-p">
								<span class="del-com wsdel-ok">确定</span><span class="wsdel-no">取消</span>
							</p>
						</div>
					</aside>
					
					
					
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

	<script type="text/javascript">
		$('#ssi-upload').ssi_uploader({
			url : '#',
			maxFileSize : 6,
			allowed : [ 'jpg', 'gif', 'txt', 'png', 'pdf' ]
		});
		$('#ssi-upload2').ssi_uploader({
			url : '#',
			preview : false,
			allowed : [ 'jpg', 'gif', 'txt', 'png', 'pdf' ]
		});
		$('#ssi-upload3').ssi_uploader({
			url : '#',
			dropZone : false,
			allowed : [ 'jpg', 'gif', 'txt', 'png', 'pdf' ]
		});
	</script>	
</body>
</html>