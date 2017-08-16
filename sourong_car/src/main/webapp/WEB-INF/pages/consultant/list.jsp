<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>待咨询用户列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="${path}/resources/assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="${path}/resources/assets/css/dataTables.bootstrap4.css" rel="stylesheet" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>
<style type="text/css">
	table{
		text-align: center
	}
	.textarea_adapt {  
    width: 100%; /*自动适应父布局宽度*/  
    overflow: auto;  
    word-break: break-all;  
    resize:none;/*禁止拖动*/
    /*在ie中解决断行问题(防止自动变为在一行显示，主要解决ie兼容问题，ie8中当设宽度为100%时，文本域类容超过一行时，当我们双击文本内容就会自动变为一行显示，所以只能用ie的专有断行属性“word-break或word-wrap”控制其断行)*/  
	}  
</style>
</head>
<body style="width:98%">
<h2>用户咨询管理</h2>
	<div class="row">
		<div class="col-xs-12">
			<div>
				<input type="text" class="form-control-static" id="username"
					placeholder="请输入客户姓名">
				<input type="text" class="form-control-static" id="userphone"
					placeholder="请输入手机号">
				<button type="button" class="btn btn-primary" id="search">查询</button>
				
			</div>
			<div class="table-responsive">
				<table id="mydatatables"
					class="table table-striped table-bordered" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th></th>
							<th style="text-align: center;">userid</th>
							<th style="text-align: center;">姓名</th>
							<th style="text-align: center;">联系方式</th>
							<th style="text-align: center;">咨询车型</th>
							<th style="text-align: center;">是否回复</th>
							<th style="text-align: center;">回复结果</th>
							<th style="text-align: center;">咨询日期</th>
							<th style="text-align: center;">完成时间</th>
							<th style="text-align: center;">操作状态</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					
				</h4>
			</div>
			<div class="modal-body">
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<script src="${path}/resources/assets/js/jquery-3.2.1.min.js"></script>
<script src="${path}/resources/assets/js/jquery.dataTables.js"></script>
<script src="${path}/resources/assets/js/bootstrap.min.js"></script>
<script src="${path}/resources/assets/js/dataTables.bootstrap.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	mydatatables = $('#mydatatables').DataTable({
					"lengthMenu" : [[10,20,50,1000],[10,20,50,"All"]],
					"pageLength" :10,
					"searching" : false,
					"ordering" : true,
					"processing" : true,
					"serverSide" : true,
					"autoWidth" : false,
					"dom": 'tiprl',//自定义显示项
					//跟数组下标一样，第一列从0开始，这里表格初始化时，
					//第四列默认降序
					"order" : [ [ 0, "desc" ] ],
					"ajax" : {
						"url" : "${path}/consultant/rest/doSearch.action",
						"type" : "POST",
						"data" : function(pdata) {
							var isRead = ${requestScope.isRead};
							pdata.searchColumns={"IsreplyEqualTo":isRead,"UsernameLike":$('#username').val(),"UserphoneLike":$("#userphone").val()};
							var data = JSON.stringify(pdata);
							return data;
						},
						dataType : "json",
						processData : false,
						contentType : 'application/json;charset=UTF-8',
						error:function(data,e){
							alert("请求数据失败");
						}
					},
				   "columns" : [{"data" :null,"width": "5%","visible":true,"orderable":false},
								{"data" : "userid","visible":false},
								{"data" : "username","width": "10%"},
								{"data" : "userphone","width": "15%"},
								{"data" : "productid","width": "25%"},
								{"data" : "isreply","width": "10%","visible":false},
								{"data" : "replyresult","orderable": false,"width": "10%",
									<c:if test="${isRead == 0}">
										"visible":false
									</c:if>},
								{"data" : "createtime","width": "20%"},
								{"data" : "changetime","visible":false}],
					"columnDefs" : [{
						"render" : function(data, type, row) {
							return "<button class='btn btn-danger' data-toggle='modal' data-target='#myModal'"+ 
							"onclick=replyContent(this) style=' line-height: 0.5;font-size: 11px;padding: 7px 10px;'>查看</button>"
						},
						"targets" : 6,
						"width": "7%"
					},{
						"render" : function(data, type, row) {
							return "<button class='btn btn-danger' data-toggle='modal' data-target='#myModal'"+ 
							"onclick=checkproduct("+row.productid+") style=' line-height: 0.5;font-size: 11px;padding: 7px 10px;'>查看</button>"
						},
						"targets" : 4,
						"width": "7%"
					},{
						"render" : function(data, type, row,meta) {
							mydatatables.column(0, {
					            search: 'applied',
					            order: 'applied'
					        }).nodes().each(function(cell, i) {
					            cell.innerHTML = i + 1;
					        });
							if(row.isreply == 1){
								return '<a href="javascript:void(0)" onclick="del(\''+row.userid+'\')" class="tooltip-error" data-rel="tooltip" title="删除"><span class="red"><i class="icon-trash bigger-150"></i></a>';
							}else if(row.isreply == 0){
								return 	"<button onClick=recordContent(this) data-toggle='modal' data-target='#myModal' class='btn btn-info' style=' line-height: 0.5;font-size: 11px;padding: 7px 10px;'>记录咨询结果</button>" +"  "+
								"<button onClick=mark(this) class='btn btn-success' style=' line-height: 0.5;font-size: 11px;padding: 7px 10px;'>标记为已查看</button>" ; 
							}
						},
						"targets" : 9,
						"width": "10%",
					}],
					"language" : {
						"url" : "${path}/resources/assets/language/zh_CN.txt"
					},
			});
			$("#search").click(function() {
				mydatatables.ajax.reload();
			});
			
			$("#username").keydown(function(e) {
				if(e.keyCode==13){
					mydatatables.ajax.reload();
				}
			});
		});
		function replyContent(obj){
			
			var data = $('#mydatatables').DataTable().row($(obj).parent().parent()).data();
			$('.modal-title').text('客户回复结果');
			if(!data.replyresult){				
				$('.modal-body').text("无回复结果");
			}else{
			$('.modal-body').text(data.replyresult);
			}
			$('.modal-footer').html('<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>')
		};
		var data;
		function recordContent(obj){
			data = $('#mydatatables').DataTable().row($(obj).parent().parent()).data();
			$('.modal-title').text('填写客户咨询记录');
			$('.modal-body').html('<textarea rows="6" cols="50" class="textarea_adapt" placeholder="在此填写记录" id="textArea"> ' + (data.replyresult||'') + '</textarea>')
			$('#submit').remove();
			$('.modal-footer').append('<button id="submit" onclick="saveRecord(data)" type="button" class="btn btn-primary" data-dismiss="modal">提交</button>')
		}
		function saveRecord(obj){
			 $.ajax({
				"url":"doEdit.action",
				"type":"POST",
				"data":{"consultantid":obj.consultantid,"replyresult":$('#textArea').val()},
				"dataType":"json",
				"success":function(){
					alert("操作成功");
					mydatatables.ajax.reload();
				}
			}); 
		}
		function mark(obj){
			var data = $('#mydatatables').DataTable().row($(obj).parent().parent()).data();
			var consultantId = data.consultantid;
			 $.ajax({
				"url":"markRead.action",
				"type":"POST",
				"data":{"consultantId":consultantId},
				"dataType":"json",
				"success":function(data){
                                     alert("标记为已查看成功")
				     mydatatables.ajax.reload();
				},
				"error":function(data){
					alert("请求失败，请稍后再试");
				}
			}); 
		}
		
		function del(userid){
			if(window.confirm("你确定要删除？")){
				$.getJSON("${path }/consultant/rest/doDelete.action?id="+userid,
							function(data){
						alert(data.msg);
						if(data.status==1){
							mydatatables.ajax.reload();
						}
					});
			}
		};
		
		 /**
		   *获取产品列表
		   **/
		   function checkproduct(id){
			  $.ajax({
				  "url":"${path}/product/rest/get.action",
					"type":"POST",
					"data":{"id":id},
					"dataType":"json",
					"success":function(data){
						if(data.coverpic==null){
							data.coverpic='${path}/resources/assets/images/nocoverpic.png';
							
						}
						var htmlcore =    '<div class="form-group"><label class="col-sm-3 control-label">';
						var brandname=    '品牌名:</label><div class="col-sm-9"><p  class=" col-xs-10" style="padding: 6px 12px;">'+data.brandname+'</p></div></div>' ;
						var cartype=      '车型:</label><div class="col-sm-9"><p class=" col-xs-10" style="padding: 6px 12px;">'+data.cartype+'</p></div></div>' ;
						var marketprice = '市价:</label><div class="col-sm-9"><p  class="col-xs-10" style="padding: 6px 12px;">'+data.marketprice+'</p></div></div>' ;
						var sourongprice ='搜融价:</label><div class="col-sm-9"><p  class="col-xs-10" style="padding: 6px 12px;">'+data.sourongprice+'</p></div></div>' ;
						var coverpic =    '封面图片:</label><div class="col-sm-9"><img  src="/images/'+data.coverpic+'" style="width:300px;height:150px"></div></div>' ;
						$('.modal-title').text('产品信息');
						$(".modal-body").html('<form class="form-horizontal">'+htmlcore+brandname+htmlcore+cartype+htmlcore+marketprice+htmlcore+sourongprice+htmlcore+coverpic+"</form>")				
					},
					"error":function(data){
						$('.modal-title').text('产品信息');
						$('.modal-footer').css('border-top','0px');
						$(".modal-body").html("<h3 style='text-align:center'>产品不存在或者已下线</h3>")
					}
			  })
		 }		 
	</script>
</body>
</html>
