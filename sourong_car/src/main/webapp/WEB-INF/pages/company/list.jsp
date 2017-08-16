<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>xxx列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>
<style type="text/css">
</style>
</head>
<body style="width:98%">
	<div class="row">
		<div class="col-xs-12">
		<h2>公司信息管理</h2>
			<div class="table-responsive">
				<table id="mydatatables"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
						    <th></th>
							<th>公司名称</th>
							<th>服务热线</th>
							<th>服务时间</th>
							<th>公司二维码</th>
							<th>公司地址</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%>

	<script type="text/javascript">
	
		jQuery(function($) {
		
			mydatatables = $('#mydatatables').DataTable(
							{
								"lengthMenu" : [[10,20,50,1000],
										[10,20,50,"All"]],
								"pageLength" :10,
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
									"url" : "${path }/company/rest/doSearch.action",
									"type" : "POST",
									"data" : function(pdata) {
										
										pdata.searchColumns={
												"xxxLike":$("#xxx").val()
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
									"data" : "companyname"
								},						
								{
									"data" : "companyphone"
								},
								{
									"data" : "servicetime"
								},
								{
									"data" : "companyqr"
								},
								{
									"data" : "companyadress"
								},
								{
									"data" : "companyid",
									"orderable":false
								}],
								"columnDefs" : [
									
										   {
											"render" : function(data, type, row) {
												return '<a href="${path }/company/edit.action?id='+data+'" class="tooltip-success" data-rel="tooltip" title="修改"><span class="green"><i class="icon-edit bigger-120"></i></a>&nbsp;&nbsp;';
											},
											"targets" :6
										   },
											{
												"render" : function(data, type, row) {
													return '<button class="btn btn-primary btn-sm" onclick="dobutton(this)" value='+data+' data-toggle="modal" data-target="#myModal">查看二维码</button>';
												},
												"targets" :4
										} ],

								"language" : {
									"url" : "${path }/resources/assets/language/zh_CN.txt"
								}

							});

			$("#search").click(function() {
				
				mydatatables.ajax.reload();
			});			
		});
		function dobutton(a){			
			var qrpicture = $(a).attr("value");
			$("#companyqrcheck").attr("src","/images/"+qrpicture);
		}
	</script>
	<!-- 公司logo模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="left:0px;width:300px;height:300px">
        <div class="modal-content" style="width:300px;height:300px" >
           <div class="modal-body" style="width:300px;height:300px">
					<table>
						<tr>
							<td><img src="" id='companyqrcheck' style="width:250px;height:250px"></td>
						</tr>
					</table>
				</div>           
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>
