<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>xxx列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>
<%@ include file="/WEB-INF/pages/common/imageUploadUtil_css.jsp"%>
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

				<button class="btn btn-primary" id="add">新增</button>
				
			</div>
			<div class="table-responsive">
				<table id="mydatatables"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>

							<th style="width:10%">编号</th> 
							<th>产品图</th>
							<th style="width:20%">操作</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	
<div class="modal fade" id="uploadModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" >
        <div class="modal-content">
			<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">上传图片</h4>
            </div>
            
            <div class="modal-body" role="form">
	            <form class='form-horizontal' enctype="multipart/form-data"
					action="${path}/carpicture/doEdit.action" method="post">
	            	<input type="hidden" id="productid" name="productid" value="${productid }">
	            	<input type="hidden" id="carpictureid" name="carpictureid">
	            	<input type="hidden" id="picture" name="picture">
	            	<div class="form-group">
						<div class="col-xs-12">
							<section class=" img-section">
								<div class="z_photo upimg-div clear">
									<section class="z_file fl">
										<div<%--  src="${path}/resources/assets/images/picupload/a11.png" --%> class="add-img"></div>
										 <input type="file" name="file" class="file"
											accept="image/jpg,image/jpeg,image/png,image/bmp" />
									</section>
								</div>
							</section>
						</div>
					</div>
					<aside class="mask works-mask">
						<div class="mask-content">
							<p class="del-p">您确定要删除作品图片吗？</p>
							<p class="check-p">
								<span class="del-com wsdel-ok">确定</span><span class="wsdel-no">取消</span>
							</p>
						</div>
					</aside>
					<button type="submit" class="btn btn-info pull-right">确认</button>
					<div class="clear"></div>
	            </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" style="left:-25%" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="left:0px;width:300px;height:300px">
        <div class="modal-content" style="width:550px;height:300px" >
           <div class="modal-body" style="width:550px;height:300px">
					<table>
						<tr>
							<td><img src="" id='companyqrcheck' style="width:500px;height:250px"></td>
						</tr>
					</table>
				</div>           
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%>
	<script src="${path}/resources/assets/js/imgUp.js"></script> 
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
								"lengthMenu" : [[8],
										[8]],
								"pageLength" :10,
								"info":false,
								"lengthChange": false,
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

										pdata.searchColumns={//id位置注意双引号问题
											"ProductidEqualTo":id
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
													    if(row.islooping==0){
													    	loopresult="已轮播"
													    }
														return '<button class="btn-link tooltip-success" onclick="showedit('+data+',\''+row.picture+'\')" data-rel="tooltip" title="修改图片"><span class="green"><i class="icon-edit bigger-120"></i></button>&nbsp;&nbsp;'
														+'<p:permission privilege="com.sourong.carpicture.controller.CarpictureController:doDelete"><a href="javascript:void(0)" onclick="del(\''+data+'\')" class="tooltip-error" data-rel="tooltip" title="删除"><span class="red"><i class="icon-trash bigger-120"></i></a></p:permission>&nbsp;&nbsp;'
														+'<button style="" class="btn btn-primary btn-sm loopbtn" name="0" loopingnum='+row.islooping+' onclick="dolooping(this,'+row.carpictureid+')">'+loopresult+'</button>&nbsp;&nbsp;';
													},
											"targets" :2
										}, 
										//pricure  图片显示
										{
											"render" : function(data, type, row) {
												/* return '<img style="float:right;margin:4px;width:50px;height:50px" src ="/images/'+row.picture+'" >' */
												 return '<button class="btn btn-link" onclick="dobutton(this)" value='+row.picture+' data-toggle="modal" data-target="#myModal"><img style="max-height:120px" src="/images/'+row.picture+'"></button>';
												;
											},
											"targets" :1
										} 
										],

								"language" : {
									"url" : "${path }/resources/assets/language/zh_CN.txt"
								}

							}).on("draw.dt",function(){$("#mydatatables_paginate").remove()});
				$("#add").click(showedit);
				$("#uploadModal form").submit(function(e){
					e.preventDefault&&e.preventDefault();
					if($(this).find(":file").length<=1){
						alert("请上传图片");
					}
					else
					$.ajax({  
					     url:"${path }/carpicture/doEdit.action",// 跳转地址到 action  
					     data: new FormData(this) /* {
					    	 carpictureid:$('#carpictureid').val(),
					    	 productid:$('#productid').val(),
					    	 file:$(':file')[0].files[0],
					    	 picture:$('#picture').val()
					     } */ ,
					    type:'post',  
					    processData:false,
					    contentType:false,
						dataType:'json',  
					    success:function(data) {
					        if(data&&typeof data.status==="number"){
					        	if(data.status>0){
					        		data.msg&&alert(data.msg);
					        	}
					        	if(data.status!=1)
					        		mydatatables.ajax.reload();
					        }
					        $('#uploadModal').modal('hide');
						 },  
					     error : function() { 
					    	 alert("请重试")
						 }  
					});
					return false;
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
			        
			    	if(data==0){
				     $(that).text("已轮播")			    		
			    	}else if(data==1){
			    		
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
		
		function showedit(id,pic){
			if(typeof id==='number'){
				$("#carpictureid").val(id);
				$("#picture").val(pic);
				$(".up-section").remove();
				$(".file").val('').parent().show();
				$("#uploadModal").modal('show');
			}
			else{
				$.ajax({
					 url:"${path }/carpicture/rest/count.action",// 跳转地址到 action  
				     data:{  
				        productid:${productid}
				    },  
				    type:'post',  
					dataType:'json',  
				    success:function(data) {  
				    	if(typeof data==='number'){
				    		if(data<8){
								$("#carpictureid").val('');
								$("#picture").val('');
								$(".up-section").remove();
								$(".file").val('').parent().show();
				    			$("#uploadModal").modal('show');
				    		}
				    		else{
								alert("图片已满8张");
								mydatatables.ajax.reload();
				    		}
				    	}
					},  
				     error : function() { 
				    	 alert("请重试");
					} 
				})
			}
		}
	</script>
</body>
</html>
