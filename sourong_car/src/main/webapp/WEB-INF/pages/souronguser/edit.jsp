<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>xx编辑页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>
<body>
<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
	<form class="form-horizontal" role="form" action="${path }/souronguser/doEdit.action" method="post">
	<input type="hidden" name="id" value="${entity.id }">
	<div class="form-group">
		<label for="userid" class="col-sm-2 control-label">userid</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="userid" name="userid" value="userid"
				   placeholder="请输入userid">
		</div>
	</div>
	<div class="form-group">
		<label for="username" class="col-sm-2 control-label">username</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="username" name="username" value="username"
				   placeholder="请输入username">
		</div>
	</div>
	<div class="form-group">
		<label for="userphone" class="col-sm-2 control-label">userphone</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="userphone" name="userphone" value="userphone"
				   placeholder="请输入userphone">
		</div>
	</div>
	<div class="form-group">
		<label for="salt" class="col-sm-2 control-label">salt</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="salt" name="salt" value="salt"
				   placeholder="请输入salt">
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">password</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="password" name="password" value="password"
				   placeholder="请输入password">
		</div>
	</div>
	<div class="form-group">
		<label for="openid" class="col-sm-2 control-label">openid</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="openid" name="openid" value="openid"
				   placeholder="请输入openid">
		</div>
	</div>
	<div class="form-group">
		<label for="islogout" class="col-sm-2 control-label">islogout</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="islogout" name="islogout" value="islogout"
				   placeholder="请输入islogout">
		</div>
	</div>
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
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary">提交</button>
			<a href="${path }/souronguser/list.action" class="btn btn-default">返回</a>
		</div>
	</div>
	</form>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%>
	<script type="text/javascript">
		jQuery(function($) {
			
		});
	</script>
</body>
</html>