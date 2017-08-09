<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>品牌列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>
</head>
<body style="width:98%">
	<div class="row">
		<div class="col-xs-12">
			<div>
				<input type="text" class="form-control-static" id="brandname"
					placeholder="请输入品牌名">
					
				<button type="button" class="btn btn-default" id="search">查询</button>
				
				<a class="btn btn-primary" data-toggle="modal" data-target="#add">新增</a>
			</div>
			<div class="table-responsive">
				<table id="mydatatables"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
						   
							<th>品牌编号</th>
							<th>品牌名</th>
							<th>品牌图标</th>
							<!-- <th>排列顺序</th> -->
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
            	<form class="form-horizontal" role="form" action="${path }/brand/doEdit.action" method="post" enctype="multipart/form-data">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">新增</h4>
            </div>
            <div class="modal-body">
			<input type="hidden" name="brandid" value="${brandVO.brandid}">
			<div class="form-group">
				<label for="brandname" class="col-sm-2 control-label">品牌名</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="brandname" name="brandname" value="${brandVO.brandname}"
						   placeholder="请输入品牌名" required="请输入品牌名"  >
				</div>
			</div>
			<div class="form-group">
				<label for="brandpic" class="col-sm-2 control-label">品牌图标</label>
				<div class="col-sm-10">
					<input type="file" name="pic" id="pic" onchange="previewFile()"/> 
				</div>
				<div class="col-sm-10" style="margin-top: 30px">
					<img src=""  id="modelimg" style="max-width: 300px;max-height: 500px"  alt="Image preview..." />   		
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

   <!-- 图标模态框 -->
	<!-- 模态框（Modal） -->
<div class="modal fade" id="lookpic" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            	<form class="form-horizontal" role="form" action="${path }/brand/doEdit.action" method="post" enctype="multipart/form-data">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">品牌图标</h4>
            </div>
            <div class="modal-body">
			<div class="form-group">
				<img id="modelpic" src=""  style="max-height: 500px;max-width: 300px;display:block;margin: 0 auto" alt="这里是图片"  />
			</div>	
			</div>			
		            <div class="modal-footer">
		                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		            </div>
			 </form>
		        </div><!-- /.modal-content -->
		    </div><!-- /.modal-dialog -->
		</div>
<!-- /.modal -->
	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%>

	<script type="text/javascript">
	 function previewFile() {
		 var preview = document.querySelector('#modelimg');
		 var file  = document.querySelector('input[type=file]').files[0];
		 var reader = new FileReader();
		 reader.onloadend = function () {
		  preview.src = reader.result;
		 }
		 if (file) {
		  reader.readAsDataURL(file);
		 } else {
		  preview.src = "";
		 }
		};
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
									"url" : "${path }/brand/rest/doSearch.action",
									"type" : "POST",
									"data" : function(pdata) {
										
										pdata.searchColumns={
												"BrandnameLike":$("#brandname").val()
										
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
									"data" : "brandid"
								},
								{
									"data" : "brandname"
								},
								{
									"data" : "brandpic"
								},
								
								/* {
									"data" : "orderby"
								}, */
						
								 {
									"data" : "brandid",
									"orderable":false
								} ],
								"columnDefs" : [
									
										{
											"render" : function(data, type, row) {
												return '<p:permission privilege="com.sourong.brand.controller.BrandController:doEdit"><a href="${path }/brand/edit.action?brandid='+row.brandid+'" class="tooltip-success" data-rel="tooltip" title="修改"><span class="green"><i class="icon-edit bigger-150"></i></a></p:permission>&nbsp;&nbsp&nbsp;&nbsp'
												+'<p:permission privilege="com.sourong.brand.controller.BrandController:doDelete"><a href="javascript:void(0)" onclick="del(\''+row.brandid+'\')" class="tooltip-error" data-rel="tooltip" title="删除"><span class="red"><i class="icon-trash bigger-150"></i></a></p:permission>&nbsp;&nbsp&nbsp;&nbsp'
												+'<p:permission privilege="com.sourong.brand.controller.BrandController:getCartype"><a href="${path }/brand/getCartype.action?brandid='+row.brandid+'" class="tooltip-success" data-rel="tooltip" title="修改"><span class="green">more</a></p:permission>&nbsp;&nbsp&nbsp;&nbsp;';
											},
											"targets" : 3
										},
										{
											"render" : function(data, type, row) {
												/* return '<img src="/images/'+row.brandpic+'" height="100" width="100" alt="这里是图片"/>'; */
												return '<a  data-toggle="modal" data-target="#lookpic"  href="javascript:void(0)" onclick="look(\''+row.brandpic+'\')">点击查看品牌图标</a>';
											},
											"targets" : 2
										} 
										],
										 

								"language" : {
									"url" : "${path }/resources/assets/language/zh_CN.txt"
								}

							});

			$("#search").click(function() {
				
				mydatatables.ajax.reload();
			});
			
			
		});
		
		function del(brandid){
			if(window.confirm("你确定要删除？")){
				$.getJSON("${path }/brand/rest/doDelete.action?brandid="+brandid,
							function(data){
						alert(data.msg);
						if(data.status==1){
							mydatatables.ajax.reload();
						}
					});
			}
		};
		function look(brandpic){
			var asd="/images/"+brandpic;
			console.log(asd)
			$("#modelpic").attr("src",asd);									
		}
	</script>
</body>
</html>
