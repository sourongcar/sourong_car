<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>产品列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>
<style type="text/css">
.img{
	width:120px;
	border:1px solid #ddd;
	text-align: center;
}
.imgwrap img{
	border: 1px black solid;
    box-shadow: 0 0 25px black;
}
.imgwrap .close{
	display: none;
	position: absolute;
	border-radius: 50%;
	background-color: black;
	top:-15px;
	right:-15px;
    width: 30px;
    text-align: center;
    line-height: 30px;
    height: 30px;
    font-size:25px;
}
.imgwrap:hover .close{
	display: block;
}
</style>
</head>
<body style="width:98%">
	<div class="row">
		<div class="col-xs-12">
			<div>
				<input type="text" class="form-control-static" id="brand"
					placeholder="请输入品牌">
				<input type="text" class="form-control-static" id="cartype"
					placeholder="请输入车型">
					
				<button type="button" class="btn btn-default" id="search">查询</button>
				
				<a  href="${path }/product/edit.action" class="btn btn-primary" id="add">新增</a>
				
			</div>
			<div class="table-responsive">
				<table id="mydatatables"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
						    <th></th>
							<th>名称</th>
							<th>品牌</th>
							<th>车型</th>
							<th>封面图</th>
							<th>封面描述</th>
							<th>市场价</th>
							<th>搜融价</th>
							<th>热度</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	<div class="modal fade" id="imgModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="imgwrap">
			<div type="button" class="close" data-dismiss="modal" aria-hidden="true">×</div>
	    	<img style="width:100%;">
	    </div>
		</div>
		</div>
	</div>
	<div class="modal fade" id="configModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	                <h4 class="modal-title" id="myModalLabel">产品配置</h4>
	            </div>
	            <div class="modal-body">
	            <form class='form-horizontal'>
	            	<input type="hidden" id="configurationid" name="configurationid">
	            	<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="color">颜  &nbsp; 色 </label>
						<div class="col-sm-8">
							<input type="text" id="color" name="color" placeholder="颜    色" class="form-control col-xs-10">
							<span class='red'></span>
						</div>
					</div>
	            	<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="mainoilconsumption">车主油耗 </label>
						<div class="col-sm-8">
							<input type="text" id="mainoilconsumption" name='mainoilconsumption' placeholder="车主油耗" class="form-control col-xs-10">
							<span class='red'></span>
						</div>
					</div>
	            	<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="comprehensiveoilconsumption">综合油耗 </label>
						<div class="col-sm-8">
							<input type="text" id="comprehensiveoilconsumption" name="comprehensiveoilconsumption" placeholder="综合油耗" class="form-control col-xs-10">
							<span class='red'></span>
						</div>
					</div>
	            	<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="size">车身尺寸</label>
						<div class="col-sm-8">
							<input type="text" id="size" name="size" placeholder="车身尺寸" class="form-control col-xs-10">
							<span class='red'></span>
						</div>
					</div>
	            	<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="structure">车身结构 </label>
						<div class="col-sm-8">
							<input type="text" id="structure" name="structure" placeholder="车身结构" class="form-control col-xs-10">
							<span class='red'></span>
						</div>
					</div>
	            	<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="warranty">整车质保 </label>
						<div class="col-sm-8">
							<input type="text" id="warranty" name="warranty" placeholder="整车质保" class="form-control col-xs-10">
							<span class='red'></span>
						</div>
					</div>
	            	<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="transmissioncase">变 速 箱 </label>
						<div class="col-sm-8">
							<input type="text" id="transmissioncase" name="transmissioncase" placeholder="变 速 箱" class="form-control col-xs-10">
							<span class='red'></span>
						</div>
					</div>
	            	<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="engine">发 动 机 </label>
						<div class="col-sm-8">
							<input type="text" id="engine" name="engine" placeholder="发 动 机" class="form-control col-xs-10">
							<span class='red'></span>
						</div>
					</div>
	            	<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="driverway">驱动方式 </label>
						<div class="col-sm-8">
							<input type="text" id="driverway" name="driverway" placeholder="驱动方式" class="form-control col-xs-10">
							<span class='red'></span>
						</div>
					</div>
	            </form>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button type="button" class="update btn btn-primary">提交更改</button>
	            </div>
	        </div>
	    </div>
	</div>
	
	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%>

	<script type="text/javascript">
		jQuery(function($) {
		
			mydatatables = $('#mydatatables').DataTable(
							{
								"lengthMenu" : [[5,10,20,30],
										[5,10,20,30]],
								"pageLength" :5,
								"searching" : true,
								"ordering" : true,
								"processing" : true,
								"serverSide" : true,
								"autoWidth" : false,
								"dom": 'tiprl',//自定义显示项
								//跟数组下标一样，第一列从0开始，这里表格初始化时，
								//第四列默认降序
								"order" : [ [ 0, "desc" ] ],
								"ajax" : {
									"url" : "${path }/product/rest/doSearch.action",
									"type" : "POST",
									"data" : function(pdata) {
										
										pdata.searchColumns={
												"BrandnameLike":$("#brand").val(),
												"CartypeLike":$("#cartype").val()
										}
										var data = JSON.stringify(pdata);
										//JSON.parse();
										return data;
									},
									dataType : "json",
									processData : false,
									contentType : 'application/json;charset=UTF-8',
									error:function(data,e){
										alert(data.responseText);
									}
								},
								"columns" : [ 
							     {
									"data" : "createtime",
									"visible" : false
								},
								{
									"data" : "title"
								},
								{
									"data" : "brandname"
								},
								{
									"data" : "cartype"
								},
								{
									"data" : "coverpic",
									"orderable":false
								},
								{
									"data" : "picintroduction"
								},
								{
									"data" : "marketprice"
								},
								{
									"data" : "sourongprice"
								},
								{
									"data" : "hit"
								},
								{
									"data" : "productid",
									"orderable":false
								}],
								"columnDefs" : [
										{
											"render" : function(data, type, row) {
												var url=data&&('/images/'+data)||'';
												return data?('<div class="btn btn-link" onclick="showImg(\''+url+'\')"><img class="img" src="'+url+'"></div>'):'暂无';
											},
											"targets" : 4
										},
										{
											"render" : function(data, type, row) {
												return data+'万';
											},
											"targets" : 6
										},
										{
											"render" : function(data, type, row) {
												return data+'万';
											},
											"targets" : 7
										},
										{
											"render" : function(data, type, row) {
												return data==0?'首页轮播':data==1?'<span class="red"><strong>热门</strong></span>':data==2?'普通':'无';
											},
											"targets" : 8
										},
										{
											"render" : function(data, type, row) {
												return '<a href="${path }/product/edit.action?id='+data+'" class="tooltip-success" data-rel="tooltip" title="修改"><span class="green"><i class="icon-edit bigger-120"></i></span></a>&nbsp;'
												+'<a href="javascript:void(0)" onclick="del(\''+data+'\')" class="tooltip-error" data-rel="tooltip" title="删除"><span class="red"><i class="icon-trash bigger-120"></i></span></a>&nbsp;'
												+'<a href="javascript:void(0)" onclick="toggleshow(this,\''+data+'\')" class="tooltip-error" data-rel="tooltip" title="是否展示"><span class="'+(row.isdisplay==0?'blue':'light-grey')+'"><i class="icon-eye-'+(row.isdisplay==0?'open':'close')+' bigger-120"></i></span></a>&nbsp;'//
												+'<a href="javascript:void(0)" onclick="showConfig(\''+row.configurationid+'\')" class="tooltip-error" data-rel="tooltip" title="查看配置"><span class="orange"><i class="icon-cog bigger-120"></i></a>&nbsp;'
												+'<a href="${path}/carpicture/list.action?productid='+data+'" class="tooltip-error" data-rel="tooltip" title="展示图片"><span class="grey"><i class="icon-picture bigger-120"></i></span></a>';
											},
											"targets" : 9
										} ],

								"language" : {
									"url" : "${path }/resources/assets/language/zh_CN.txt"
								}
							}).on('draw.dt',function(){onresize();});

			$("#search").click(function() {
				mydatatables.ajax.reload();
			});
			
			$("#brand,#cartype").keydown(function(e) {
				if(e.keyCode==13){
					mydatatables.ajax.reload();
				}
			});
			//配置表单提交
			$('#configModal .update').click(function(){$('#configModal form').submit();});
			$('#configModal form')[0].onsubmit=function(e){
				if(validate.check())
				$.ajax({
					url: "${path }/configuration/doEdit.action",
					dataType : "json",
					type:"POST",
					data:new FormData(this),
					contentType :false,
					processData:false,
					success:function(data){
						$("#configModal").modal("hide");
					},
					error:function(data,e){
						alert("提交失败");
					}
				});e.preventDefault();
				return false;
			};
			//表单校验
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
			};
			validate.check=function(){
				if(this.list){
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
				}
			};
			validate({el:"#configModal input[type=text][id!=color]",pattern:".{1,36}",error:"长度为1到36字符"})({el:"#configModal #color",pattern:".{1,10}",error:"长度为1到10字符"});
		});
		
		function del(id){
			if(window.confirm("你确定要删除？")){
				$.getJSON("${path }/product/rest/doDelete.action?id="+id,
							function(data){
						alert(data.msg);
						if(data.status==1){
							mydatatables.ajax.reload();
						}
					});
			}
		}
		//切换是否展示
		function toggleshow(self,id){
			var span=$(self).children("span");
			var i=span.children("i");
			$.getJSON("${path }/product/toggleVisibility.action?id="+id,
				function(data){
					if(data=="success"){
						if(i.hasClass("icon-eye-open")){
							span.removeClass("blue").addClass("light-grey");
							i.removeClass("icon-eye-open").addClass("icon-eye-close");
						}else{
							span.removeClass("light-grey").addClass("blue");
							i.removeClass("icon-eye-close").addClass("icon-eye-open");
						}
					}
				});
		}
		//图片展示
		function showImg(src){
			$("#imgModal img").attr("src",src);
			$("#imgModal").modal("show");
		}
		//车辆配置
		function showConfig(configId){
			$.ajax({
				"url" : "${path }/configuration/rest/get.action?id="+configId,
				dataType : "json",
				contentType : 'application/json;charset=UTF-8',
				success:function(data){
					$("#configurationid").val(configId);
					var labels=['color','mainoilconsumption','comprehensiveoilconsumption','size','structure','warranty','transmissioncase','engine','driverway'];
					for(var i=0;i<labels.length;i++){
						l=labels[i];
						$("#"+l).val(data[l]);
					}
					$('#configModal input[type=text]+span').text("");
					$('#configModal').modal('show');
				},
				error:function(data,e){
					alert("查询失败");
				}
			});
		}
	</script>
</body>
</html>
