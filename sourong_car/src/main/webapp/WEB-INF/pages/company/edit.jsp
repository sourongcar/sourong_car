<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>公司信息编辑页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%-- <%@ include file="/WEB-INF/pages/common/rs_css.jsp"%> --%>
<%@ include file="/WEB-INF/pages/common/rs_picupload_css.jsp"%>
<body>
<h2 style="text-align:center;margin-top:5%">公司信息管理</h2>
<div class="container" style="margin-top:5%">
		<div class="row clearfix">
			<div class="col-md-12 column">
	<form class="form-horizontal" role="form" action="${path }/company/doEdit.action" method="post" enctype="multipart/form-data">
	<input type="hidden" name="companyid" value="${entity.companyid }">
	<div class="form-group">
		<label for="companyname" class="col-sm-2 control-label">公司名称</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="companyname" name="companyname" value="${entity.companyname}"
				   placeholder="请输入公司名称">
		</div>
	</div>
	<div class="form-group">
		<label for="companyphone" class="col-sm-2 control-label">服务热线</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="companyphone" name="companyphone" value="${entity.companyphone}"
				   placeholder="请输入服务热线">
		</div>
	</div>
	<div class="form-group">
		<label for="companyphone" class="col-sm-2 control-label">服务时间</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="servicetime" name="servicetime" value="${entity.servicetime}"
				   placeholder="请输入服务时间">
		</div>
	</div>
	<div class="form-group">
		<label for="companyqr" class="col-sm-2 control-label">公司二维码</label>
		<div class="col-sm-5">
			<input type="text" class="form-control" id="companyqr" name="companyqr" value="${entity.companyqr}"
				   placeholder="请输入公司二维码" style="display:none">				 
			<section class=" img-section">
				<p class="up-p"><span class="up-span">点击可更换二维码图片</span></p>
				<div class="z_photo upimg-div clear" >
		               	 <section class="z_file fl">
		               	 	<img src="${path}/resources/assets/images/picupload/a11.png" class="add-img">
		               	 	<input type="file" name="file" id="file" class="file" value="" accept="image/jpg,image/jpeg,image/png,image/bmp" multiple />
		               	 </section>
		         </div>
			 </section>
		</div>
	</div>
	<div class="form-group">
		<label for="companyadress" class="col-sm-2 control-label">请输入公司地址</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="companyadress" name="companyadress" value="${entity.companyadress}"
				   placeholder="请输入公司地址">
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary">提交</button>
			<a href="${path }/company/list.action" class="btn btn-default">返回</a>
		</div>
	</div>
	</form>
			</div>
		</div>
              
	</div>
<!--提示框  -->
<aside class="mask works-mask">
			<div class="mask-content">
				<p class="del-p">您确定要删除作品图片吗？</p>
				<p class="check-p"><span class="del-com wsdel-ok">确定</span><span class="wsdel-no">取消</span></p>
			</div>
</aside>

<%-- 	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%> --%>
</body>
	<%@ include file="/WEB-INF/pages/common/rs_picupload_js.jsp"%>
</html>