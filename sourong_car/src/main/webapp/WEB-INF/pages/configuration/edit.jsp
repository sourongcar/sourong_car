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
	<form class="form-horizontal" role="form" action="${path }/configuration/doEdit.action" method="post">
	<input type="hidden" name="id" value="${entity.id }">
	<div class="form-group">
		<label for="configurationid" class="col-sm-2 control-label">configurationid</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="configurationid" name="configurationid" value="configurationid"
				   placeholder="请输入configurationid">
		</div>
	</div>
	<div class="form-group">
		<label for="productid" class="col-sm-2 control-label">productid</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="productid" name="productid" value="productid"
				   placeholder="请输入productid">
		</div>
	</div>
	<div class="form-group">
		<label for="color" class="col-sm-2 control-label">color</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="color" name="color" value="color"
				   placeholder="请输入color">
		</div>
	</div>
	<div class="form-group">
		<label for="mainoilconsumption" class="col-sm-2 control-label">mainoilconsumption</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="mainoilconsumption" name="mainoilconsumption" value="mainoilconsumption"
				   placeholder="请输入mainoilconsumption">
		</div>
	</div>
	<div class="form-group">
		<label for="comprehensiveoilconsumption" class="col-sm-2 control-label">comprehensiveoilconsumption</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="comprehensiveoilconsumption" name="comprehensiveoilconsumption" value="comprehensiveoilconsumption"
				   placeholder="请输入comprehensiveoilconsumption">
		</div>
	</div>
	<div class="form-group">
		<label for="size" class="col-sm-2 control-label">size</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="size" name="size" value="size"
				   placeholder="请输入size">
		</div>
	</div>
	<div class="form-group">
		<label for="structure" class="col-sm-2 control-label">structure</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="structure" name="structure" value="structure"
				   placeholder="请输入structure">
		</div>
	</div>
	<div class="form-group">
		<label for="warranty" class="col-sm-2 control-label">warranty</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="warranty" name="warranty" value="warranty"
				   placeholder="请输入warranty">
		</div>
	</div>
	<div class="form-group">
		<label for="transmissioncase" class="col-sm-2 control-label">transmissioncase</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="transmissioncase" name="transmissioncase" value="transmissioncase"
				   placeholder="请输入transmissioncase">
		</div>
	</div>
	<div class="form-group">
		<label for="engine" class="col-sm-2 control-label">engine</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="engine" name="engine" value="engine"
				   placeholder="请输入engine">
		</div>
	</div>
	<div class="form-group">
		<label for="driverway" class="col-sm-2 control-label">driverway</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="driverway" name="driverway" value="driverway"
				   placeholder="请输入driverway">
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
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary">提交</button>
			<a href="${path }/configuration/list.action" class="btn btn-default">返回</a>
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