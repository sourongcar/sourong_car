<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>xx编辑页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%-- <%@ include file="/WEB-INF/pages/common/rs_css.jsp"%> --%>
<%@ include file="/WEB-INF/pages/common/rs_picupload_css.jsp"%>
<body>
<h3>公司信息管理</h3>
<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
	<form class="form-horizontal" role="form" action="${path }/company/doEdit.action" method="post">
	<input type="hidden" name="companyid" value="${entity.companyid }">
	<div class="form-group">
		<label for="companyname" class="col-sm-2 control-label">公司名称</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="companyname" name="companyname" value="${entity.companyname}"
				   placeholder="请输入公司名称">
		</div>
	</div>
	<div class="form-group">
		<label for="companylogo" class="col-sm-2 control-label">公司logo</label>
		<div class="col-sm-10">
		<div style="width:200px;height:200px;border: 1px solid #ccc"></div>
			<input type="text" class="form-control" id="companylogo" name="companylogo" value="${entity.companylogo}"
				   placeholder="请输入公司logo" style="display:none">
		<button type="button" style="margin-top:4px" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">重新上传图片</button>
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
		<label for="companyqr" class="col-sm-2 control-label">公司二维码</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="companyqr" name="companyqr" value="${entity.companyqr}"
				   placeholder="请输入公司二维码">
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

<!-- 公司logo模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="left:0px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">公司logo</h4>
            </div>
            <div class="modal-body">
					<table>
						<tr>
							<td><input name="tImage" type="hidden" class="input-image"
								style="width: 500px; height: 265px;"></td>
						</tr>
					</table>
				</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
<!--                 <button type="button" class="btn btn-primary">提交更改</button> -->
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<%-- 	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%> --%>
</body>
	<%@ include file="/WEB-INF/pages/common/rs_picupload_js.jsp"%>
</html>