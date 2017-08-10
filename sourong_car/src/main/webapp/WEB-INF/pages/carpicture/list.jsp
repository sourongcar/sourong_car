<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>xxx列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>
<% 
 String name = request.getParameter("productid");//用request得到 
%> 
<style type="text/css">
</style>
</head>
<body style="width:98%">
	<div class="row">
		<div class="col-xs-12">
			<div>
			
<!-- 				<input type="text" class="form-control-static" id="xxx"
					placeholder="请输入产品类型">					
				<button type="button" class="btn btn-default" id="search">查询</button> -->

				<a  href="${path }/carpicture/edit.action" class="btn btn-primary" id="add">新增</a>
				
			</div>
			<div class="table-responsive">
				<table id="mydatatables"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>

							<th>编号</th> 
							<!-- <th>产品类型</th>  -->
							<th>产品图</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	
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
	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%>

	<script type="text/javascript">
/* 	//获取地址url参数
	function UrlSearch() 
	{
	   var name,value; 
	   var str=location.href; //取得整个地址栏
	   var num=str.indexOf("?") 
	   str=str.substr(num+1); //取得所有参数   stringvar.substr(start [, length ]

	   var arr=str.split("&"); //各个参数放到数组里
	   for(var i=0;i < arr.length;i++){ 
	    num=arr[i].indexOf("="); 
	    if(num>0){ 
	     name=arr[i].substring(0,num);
	     value=arr[i].substr(num+1);
	     this[name]=value;
	     } 
	    } 
	} 
	     var Request=new UrlSearch(); //实例化	 */
	
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
									"url" : "${path }/carpicture/rest/doSearch.action",
									"type" : "POST",
									"data" : function(pdata) {
										var id = ${productid}
										pdata.searchColumns={
											"ProductidEqualTo":'${productid}'
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
									"data" : "carpictureid"
								},
/* 								{
									"data" : "productid"
								}, */
								{
									"data" : "picture"
								},
								{
									"data" : "carpictureid",
									"orderable":false
								}],
								"columnDefs" : [
									
										{
											"render" : function(data, type, row) {
												        var loopresult="未轮播"
												    if(row.islooping==1){
												    	loopresult="已轮播"
												    }
												return '<a href="${path }/carpicture/edit.action?id='+data+'" class="tooltip-success" data-rel="tooltip" title="修改"><span class="green"><i class="icon-edit bigger-120"></i></a>&nbsp;&nbsp;'
												+'<p:permission privilege="com.sourong.carpicture.controller.CarpictureController:doDelete"><a href="javascript:void(0)" onclick="del(\''+data+'\')" class="tooltip-error" data-rel="tooltip" title="删除"><span class="red"><i class="icon-trash bigger-120"></i></a></p:permission>&nbsp;&nbsp;'
												+'<button style="" class="btn btn-primary" name="0" id="loopbtn" loopingnum='+row.islooping+' onclick="dolooping(this,'+row.carpictureid+')">'+loopresult+'</button>&nbsp;&nbsp;'
												
												;
											},
											"targets" :2
										}, 
										//pricure  图片显示
										{
											"render" : function(data, type, row) {
												/* return '<img style="float:right;margin:4px;width:50px;height:50px" src ="/images/'+row.picture+'" >' */
												 return '<button class="btn btn-primary btn-sm" onclick="dobutton(this)" value='+row.picture+' data-toggle="modal" data-target="#myModal">查看</button>';
												;
											},
											"targets" :1
										} 
										],

								"language" : {
									"url" : "${path }/resources/assets/language/zh_CN.txt"
								}

							});

			$("#search").click(function() {
				
				mydatatables.ajax.reload();
			});

			
			
			$("#xxx").keydown(function(e) {
				if(e.keyCode==13){
					mydatatables.ajax.reload();
				}
			});

		});
		 
		
		 function dobutton(that){
			 var pic ='/images/'+ $(that).attr("value")
			 $("#companyqrcheck").attr("src",pic)
		 }
		//创建点击事件，ajax
		function dolooping(that,carpictureid){
			var islooping = $(that).attr("loopingnum");//获取loopingnum的属性值
			
 			$.ajax( {  
				      url:"${path }/carpicture/islooping.action",// 跳转地址到 action  
				     data:{  
				        carpictureid:carpictureid,  
				        islooping:islooping,  
				    },  
			    type:'post',  
				dataType:'json',  
			    success:function(data) {  
			    	
			        $(that).attr("loopingnum",data)//给属性赋值
			        
			    	if(data==1){
				     $(that).text("已轮播")			    		
			    	}else if(data==0){
			    		
				     $(that).text("未轮播")			    		
			    	}
			    	
				      },  
			     error : function() { 
			    	 alert("操作成功")
				  }  
				 });  
		}
			    
		
		function del(id){
			if(window.confirm("你确定要删除？")){
				$.getJSON("${path }/carpicture/rest/doDelete.action?id="+id,
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
