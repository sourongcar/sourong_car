<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>车型列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>
<style type="text/css">
</style>
</head>
<body style="width:98%">
	<div class="row">
		<div class="col-xs-12">
			<div>
				<input type="text" class="form-control-static" id="cartypename"
					placeholder="请输入车型名">
					
				<button type="button" class="btn btn-default" id="search">查询</button>
				
				<a class="btn btn-primary" data-toggle="modal" data-target="#add">新增</a>
			</div>
			
			<div class="table-responsive">
				<table id="mydatatables"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
						    
							<!-- <th>编号</th> -->
							<th>品牌编号</th>
							<th>车型名</th>
							<th>操作</th>
						</tr>
					</thead> 
					<tbody>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	
	
	<!-- 新增按钮触发模态框 -->
	<!-- 模态框（Modal） -->
   <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            	<form class="form-horizontal" role="form" action="${path }/cartype/doEdit.action" method="post" enctype="multipart/form-data">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">新增</h4>
            </div>
            <div class="modal-body">
			<input type="hidden" name="cartypeid" value="${cartypeVO.cartypeid}">
			<div class="form-group">
				<label for="brandid" class="col-sm-2 control-label">品牌编号</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="brandid" name="brandid" value="${brandVO.brandid}"
						   placeholder="请输入品牌编号" readonly="品牌编号">
				</div>
			</div>
			<div class="form-group">
				<label for="brandid" class="col-sm-2 control-label">品牌名</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="brandname" name="brandid" value="${brandVO.brandname}"
						   placeholder="请输入品牌名" readonly="品牌名">
				</div>
			</div>
			<div class="form-group">
				<label for="cartypename" class="col-sm-2 control-label">车型名</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="cartypename" name="cartypename" value="${cartypeVO.cartypename}"
						   placeholder="请输入车型名" required="请输入车型名">
				</div>
			</div>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		                <button type="submit" class="btn btn-primary" id="add_submit_btn">提交</button>
		            </div>
			 </form>
		        </div><!-- /.modal-content -->
		    </div><!-- /.modal-dialog -->
		</div>
<!-- /.modal -->
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
								"order" : [ [ 0, "asc" ] ],
					
								"ajax" : {
									"url" : "${path }/cartype/rest/doSearch.action",
									"type" : "POST",
									"data" : function(pdata) {
										
										pdata.searchColumns={
												"BrandidEqualTo":${brandVO.brandid},
												"CartypenameLike":$("#cartypename").val()
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
							     
								/* {
									"data" : "cartypeid"
								}, */
								{
									"data" : "brandid"
								},
								{
									"data" :"cartypename"
								}, 
								/*  {
									"data" : "orderby"
								},  */
								{
									"data" : "cartypeid",
									"orderable":false
								}], 
								 "columnDefs" : [
									
										{
											"render" : function(data, type, row) {
												return '<p:permission privilege="com.sourong.cartype.controller.CartypeController:doEdit"><a href="${path }/cartype/edit.action?cartypeid='+row.cartypeid+'" class="tooltip-success" data-rel="tooltip" title="修改"><span class="green"><i class="icon-edit bigger-120"></i></a></p:permission>&nbsp;&nbsp;'
												+'<p:permission privilege="com.sourong.cartype.controller.CartypeController:doDelete"><a href="javascript:void(0)" onclick="del(\''+row.cartypeid+'\')" class="tooltip-error" data-rel="tooltip" title="删除"><span class="red"><i class="icon-trash bigger-120"></i></a></p:permission>';
											},
											"targets" : 2
										} ],

								"language" : {
									"url" : "${path }/resources/assets/language/zh_CN.txt"
								}

							});

			$("#search").click(function() {
				
				mydatatables.ajax.reload();
			});
			
			$("#cartypename").keydown(function(e) {
				if(e.keyCode==13){
					mydatatables.ajax.reload();
				}
			});

		});
		
		 function del(cartypeid){
			if(window.confirm("你确定要删除？")){
				$.getJSON("${path }/cartype/rest/doDelete.action?cartypeid="+cartypeid,
							function(data){
						alert(data.msg);
						if(data.status==1){
							mydatatables.ajax.reload();
						}
					});
			}
		} 
	</script>
</body>
</html>
