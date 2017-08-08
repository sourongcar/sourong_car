<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>产品编辑页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>
<style type="text/css">
label.fileup{
	display: block;
    color: #858585;
    background-color: #fff;
}
label.fileup img{
    border: 1px solid #d5d5d5;
}
label.fileup input[type=file] {
	display:none;
}
</style>
<body>
<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<form class="form-horizontal" role="form" action="${path }/product/doEdit.action" method="post" enctype="multipart/form-data">
				<input type="hidden" name="productid" value="${entity.productid}">
				<div class="form-group">
					<label for="brandname" class="col-sm-2 control-label">品牌名</label>
					<div class="col-sm-10">
						<select type="text" class="form-control" id="brandname" name="brandname">
							<c:forEach items="${brands }" var="b">
							<option value="${b}"<c:if test="${entity.brandname eq b}"> selected</c:if>>${b}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="cartype" class="col-sm-2 control-label">系列</label>
					<div class="col-sm-10">
						<select type="text" class="form-control" id="cartype" name="cartype" value="${entity.cartype}" required>
							<c:forEach items="${cartypes }" var="c">
							<option value="${c}"<c:if test="${entity.cartype eq c}"> selected</c:if>>${c}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="marketprice" class="col-sm-2 control-label">市场价(万)</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="marketprice" name="marketprice" value="${entity.marketprice}" required>
						<span class="red"></span>
					</div>
				</div>
				<div class="form-group">
					<label for="sourongprice" class="col-sm-2 control-label">搜融价(万)</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sourongprice" name="sourongprice" value="${entity.sourongprice}" required>
						<span class="red"></span>
					</div>
				</div>
				<div class="form-group">
					<label for="coverpic" class="col-sm-2 control-label">封面图</label>
					<div class="col-sm-10">
						<label class="fileup">
							<input type="file" id="coverpic" name="cover" accept="image/jpeg,image/png,image/gif">
							<img src="${entity.coverpic.replace("E:","")}">
							<div class="btn btn-success"><i class="icon-upload-alt"></i>点击上传</div>
						</label><span class="red"></span>
					</div>
				</div>
				<div class="form-group">
					<label for="picintroduction" class="col-sm-2 control-label">封面介绍</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="picintroduction" name="picintroduction" value="${entity.picintroduction}" required>
						<span class="red"></span>
					</div>
				</div>
				<div class="form-group">
					<label for="isdisplay" class="col-sm-2 control-label">是否展示</label>
					<div class="col-sm-10">
						<select type="text" class="form-control" id="isdisplay" name="isdisplay">
							<option value="0"<c:if test="${entity.hit eq 0}"> selected</c:if>>展示</option>	   
							<option value="1"<c:if test="${entity.hit eq 1}"> selected</c:if>>不展示</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="title" class="col-sm-2 control-label">标题</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="title" name="title" value="${entity.title}" required>
						<span class="red"></span>
					</div>
				</div>
				<div class="form-group">
					<label for="hit" class="col-sm-2 control-label">热度</label>
					<div class="col-sm-10">
						<select type="text" class="form-control" id="hit" name="hit">
							<option value="0"<c:if test="${entity.hit eq 0}"> selected</c:if>>首页轮播</option>	   
							<option value="1"<c:if test="${entity.hit eq 1}"> selected</c:if>>展示</option>	   
							<option value="2"<c:if test="${entity.hit eq 2}"> selected</c:if>>不展示</option>	   
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<div style="text-align: center;">
						<button type="submit" class="btn btn-primary">提交</button>
						<a href="${path }/product/list.action" class="btn btn-default">返回</a>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%>
	<script type="text/javascript">
		jQuery(function($) {
			//文件预览
			$("#coverpic").change(function(){
				var file=this.files;
				if(file.length==1&&file[0].type in {"image/jpeg":true,"image/png":true,"image/gif":true}&&file[0].size<524288){
					var reader=new FileReader();
					reader.onload=function(){
						$("label.fileup img").attr("src",reader.result);
						reader=null;
						$(this).parent().next().text("");
					}
					reader.readAsDataURL(file[0]);
				}
				else{
					var p=$(this).parent();
					p.children("img").removeAttr('src');
					p.next().text("文件格式应为jpg，png或gif，大小不超过512k");
					this.value='';
				}
				file=null;
			});
			
			//品牌车型联动
			var brandTree={};
			function updateCartype(cartypes){
				for(var i=0;i<cartypes.length;i++){
					var c=cartypes[i];
					var df=document.createDocumentFragment();
					df.appendChild($("<option value="+c+">"+c+"</option>")[0]);
					ct.append(df);
				}
			}
			var ct=$("#cartype");
			$("#brandname").change(function(){
				var brandName=this.value;
				ct.children().remove();
				if(brandTree[brandName]){
					var cartypes=brandTree[brandName];
					updateCartype(cartypes);
				}else{
					$.ajax({
						url :"${path }/cartype/ofBrand.action?brandName="+brandName,
						dataType :"json",
						contentType :'application/json;charset=UTF-8',
						success:function(data){
							console.log(data);
							brandTree[brandName]=data;
							updateCartype(data);
						}
					});
				}
			});
			
			//表单校验
			$('form').submit(function(){
				if(!validate.check())
					return false;
			});
			function validate(data){
				arguments.callee.list||(arguments.callee.list=[]);
				arguments.callee.list.push(data);
				var f=function(){
					var self=$(this);
					if(self.val().match("^"+data.pattern+"$"))
					self.next().text(data.success||"").addClass("green");
					else
					self.next().text(data.error||"输入错误").removeClass("green");
				}
				$(data.el).focus(f).blur(f);
				return arguments.callee;
			}
			validate.check=function(){
				if(this.list)
				for(var i=0;i<this.list.length||0;i++){
					var data=this.list[i];
					if([].join.call($(data.el).map(function(){
						if($(this).val().match("^"+data.pattern+"$"))
							return null;
						else{
							this.focus();
							return false;
						}
					}),'').length>0)
					return false;
				}
				return true;
			};
			validate({el:"#marketprice,#sourongprice",pattern:"\\d+(\\.\\d+)?",error:"请输入数字"})
			({el:"#picintroduction",pattern:".{1,128}",error:"长度为1到128字符"})({el:"#title",pattern:".{1,36}",error:"长度为1到36个字符"})
		});
	</script>
</body>
</html>