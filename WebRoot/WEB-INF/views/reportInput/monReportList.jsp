<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<title>投标计划</title>
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.4.4/themes/gray/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.4.4/themes/icon.css" />
<script type="text/javascript" src="jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(function() {
		//区分新增和编辑的标志位
		var flag;
		
		$('#bidPlanTable').datagrid({
			idField : 'pId', //主键字段
			title : '投标计划', //标题
			method : 'post',
			singleSelect : false, //多选
			fitColumns : true,
			striped : true, //奇偶行颜色不同
			collapsible : true,//可折叠
			url : 'reportInput/queryMonReportList.action',
			sortName:'pDate',
			sortOrder:'desc',
			remoteSort:false,
			pagination : true, //显示分页
			rownumbers : true, //显示行号
			columns : [ [ {
				field : 'ck',
				checkbox : true,
				width : 2
			}, //显示复选框
			{
				field : 'pName',
				title : '项目名称',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pName;
				}
			}, {
				field : 'pType',
				title : '工程类别',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pType;
				}
			}, {
				field : 'pService',
				title : '所属部门',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pService;
				}
			}, {
				field : 'pScale',
				title : '规模',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pScale;
				}
			}, {
				field : 'pOwnername',
				title : '业主名称',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pOwnername;
				}
			}, {
				field : 'pConstruction',
				title : '建设性质',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pConstruction;
				}
			}, {
				field : 'pLocation',
				title : '建设地点',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pLocation;
				}
			}, {
				field : 'pOpentime',
				title : '开标时间',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pOpentime;
				}
			}, {
				field : 'pBmanager',
				title : '商务经理',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pBmanager;
				}
			}, {
				field : 'pPmanager',
				title : '项目经理',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pPmanager;
				}
			}, {
				field : 'pDepid',
				title : '负责部门',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pDepid;
				}
			}, {
				field : 'pDate',
				title : '录入日期',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pDate;
				}
			}, {
				field : 'pSign',
				title : '投标计划',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					if (value == 1)
						return "是";
					else
						return "否";
				}
			}, {
				field : 'pDesign',
				title : '设计阶段',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pDesign;
				}
			} ] ],
			toolbar : [ {
				text : '新增',
				iconCls : 'icon-add',
				handler : function() {
					flag='insert';
					$("#mydialog").dialog({
						title:'新增投标计划'
					}); 
					//打开新增对话框
					$("#mydialog").dialog('open');
					//清空表单的数据
					//$("#myform").get(0).reset();
					$("#myform").form('clear');
				}
			}, '-', {
				text : '修改',
				iconCls : 'icon-edit',
				handler : function() {
					flag='edit';
					//获取所有选择的行
					var arr=$("#bidPlanTable").datagrid('getSelections');
					
					if(arr.length !=1){
						$.messager.show({
							title:'提示信息',
							msg:'只能选择一行记录进行修改'
						});
					}else{
						$("#mydialog").dialog({
							title:'修改投标计划'
						}); 
						//打开新增对话框
						$("#mydialog").dialog('open');
						$("#myform").form('clear');
						$("#myform").form('load',{
							pId:arr[0].pId,   
							pName:arr[0].pName,
							pType:arr[0].pType,
							pService:arr[0].pService,
							pScale:arr[0].pScale,
							pOwnername:arr[0].pOwnername,
							pConstruction:arr[0].pConstruction,
							pLocation:arr[0].pLocation,
							pOpentime:arr[0].pOpentime,
							pBmanager:arr[0].pBmanager,
							pPmanager:arr[0].pPmanager,
							pDepid:arr[0].pDepid,
							pDate:arr[0].pDate,
							pSign:arr[0].pSign,
							pDesign:arr[0].pDesign
						});
					}
				}
			}, '-', {
				text : '删除',
				iconCls : 'icon-remove',
				handler : function() {
					var arr=$("#bidPlanTable").datagrid('getSelections');
					if(arr.length<=0){
						$.messager.show({
							title:'提示信息',
							msg:'请至少选择一条记录删除'
						});
					}else{
						$.messager.confirm('提示信息','是否删除选中的记录？',function(r){
							if(r){
								var ids='';   //选择要删除的行记录的pId
								for(var i=0;i<arr.length;i++){
									ids += arr[i].pId + ',';
								}
								ids = ids.substring(0, ids.length);
								//向后台发送请求
								$.post('reportInput/deleteBidPlan.action',{ids:ids},function(result){
									$("#bidPlanTable").datagrid('reload');
									$.messager.show({
										title:'提示信息',
										msg:'删除成功！'
									});
								});
							}else{
								return;
							}
						});
					}
				}
			}, '-' ],
			onLoadSuccess : function() {
				$('#bidPlanTable').datagrid('clearSelections'); //datagrid加载成功后清除所有的选择
			}
		});
		
		
		//绑定确定按钮的点击事件
		$("#okbtn").click(function(){
			//验证表单数据是否合法
			if($("#myform").form('validate')){
				$.ajax({
					type:'post',
					url:flag=='insert'?'reportInput/insertBidPlan.action':'reportInput/updateBidPlan.action',
					cache:false,
					data:$("#myform").serialize(),
					dataType:'json',
					success:function(result){
						//关闭对话框
						$("#mydialog").dialog('close');
						$.messager.show({
							title:result.state,
							msg:result.message
						});
						//刷新datagrid
						if(flag=='insert'){
							$("#bidPlanTable").datagrid('load');
						}else{
							$("#bidPlanTable").datagrid('reload');
						}
					}
				});
			}else{
				$.messager.show({
					title:'提示信息',
					msg:'验证不通过，无法提交！'
				});
			}
		});
		
		//绑定取消按钮的点击事件
		$("#cancelbtn").click(function(){
			$("#mydialog").dialog('close');
		});
		
		//绑定“下一步”按钮的点击事件
		$("#nextStep").click(function(){
			parent.update('<%=basePath %>reportInput/bidsInput.action');
		});
	});
</script>
</head>
<body>
	<div id="tabdiv" style="padding: 30">
		<table id="bidPlanTable" style="height: 300px"></table>
		<a id="nextStep" class="easyui-linkbutton" >下一步</a>
	</div>
	<div id="mydialog" title="新增投标计划" class="easyui-dialog" data-options="modal:true,closed:true" 
		style="width: 300px; height: 500px">
		<form id="myform" action="" method="post">
			<input name="pId" type="hidden" value="" />
			<table>
				<tr>
					<td>项目名称：</td>
					<td><input id="test1" name="pName" type="text" value=""
						class="easyui-validatebox"
						data-options="
						required:'true',
						missingMessage:'项目名称必填'" />
					</td>
				</tr>
				<tr>
					<td>工程类别：</td>
					<td><input id="test" name="pType" value="" class="easyui-combobox" 
						data-options="
						url:'json/pType.json',
						method:'get',
						valueField:'id',
						textField:'text',
						editable:false,
						panelHeight:'auto'" />
					</td>
				</tr>
				<tr>
					<td>所属部门：</td>
					<td><input name="pService" value="" class="easyui-combogrid"
						data-options="
						idField:'depId', 
		   				textField:'depName', 
		   				url:'dept/queryAll.action',
						method:'post',
						striped: true,
						editable: false,
						columns: [[
							{
								field:'depId',title:'编号',width:100
							},{
								field:'depName',title:'名称',width:150
							}
						]],
						fitColumns: true" />
					</td>
				</tr>
				<tr>
					<td>规模：</td>
					<td><input name="pScale" type="text" value="" /></td>
				</tr>

				<tr>
					<td>业主名称：</td>
					<td><input name="pOwnername" type="text" value="" /></td>
				</tr>
				<tr>
					<td>建设性质：</td>
					<td><input name="pConstruction" type="text" value="" /></td>
				</tr>
				<tr>
					<td>建设地点：</td>
					<td><input name="pLocation" type="text" value="" /></td>
				</tr>
				<tr>
					<td>开标时间：</td>
					<td><input name="pOpentime" class="easyui-datebox"
						editable="false" /></td>
				</tr>
				<tr>
					<td>商务经理：</td>
					<td><input name="pBmanager" type="text" value="" /></td>
				</tr>
				<tr>
					<td>项目经理：</td>
					<td><input name="pPmanager" type="text" value="" /></td>
				</tr>

				<tr>
					<td>负责部门：</td>
					<td><input name="pDepid" value="" class="easyui-combogrid"
						data-options="
						idField:'depId', 
		   				textField:'depName', 
		   				url:'dept/queryAll.action',
						method:'post',
						striped: true,
						editable: false,
						columns: [[
							{
								field:'depId',title:'编号',width:100
							},{
								field:'depName',title:'名称',width:150
							}
						]],
						fitColumns: true" />
					</td>
				</tr>
				<tr>
					<td>录入日期：</td>
					<td><input name="pDate"  class="easyui-datebox"  editable="false"  /></td>
				</tr>
				<tr>
					<td>投标计划：</td>
					<td>是<input name="pSign" type="radio" value="1" checked="checked"/>
						否<input name="pSign" type="radio" value="0" />
					</td>
				</tr>
				<tr>
					<td>设计阶段：</td>
					<td><input name="pDesign" type="text" value=""  /></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<a id="okbtn" iconCls="icon-ok" class="easyui-linkbutton">确定</a>&nbsp&nbsp&nbsp&nbsp
						<a id="cancelbtn" iconCls="icon-cancel" class="easyui-linkbutton">取消</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>