<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>车型编辑页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>
<body>
<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
	<form class="form-horizontal" role="form" action="${path }/cartype/docarupdate.action" method="post">
	<input type="hidden" name="cartypeid" value="${cartypeVO.cartypeid}">
	<input type="hidden" name="brandid" value="${cartypeVO.brandid}">
		<div class="form-group">
		<label for="brandname" class="col-sm-2 control-label">品牌名</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="brandname" name="brandname"  value="${brandname}"
				   readonly="readonly">
		</div>
	</div> 
	<div class="form-group">
		<label for="cartypename" class="col-sm-2 control-label">车型名</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="cartypename" name="cartypename" value="${cartypeVO.cartypename}"
				   placeholder="请输入车型名">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary">提交</button>
			<a href="${path }/cartype/list.action" class="btn btn-default">返回</a>
		</div>
	</div>
	</form>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%>
</body>

</script>
</html>