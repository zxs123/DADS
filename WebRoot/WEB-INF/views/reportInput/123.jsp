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
	href="jquery-easyui-1.4.4/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.4.4/themes/icon.css" />
<script type="text/javascript" src="jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(function() {
		$('#bidPlanTable').datagrid({
			idField : 'pId', //主键字段
			title : '投标计划', //标题
			method : 'post',
			singleSelect : false, //多选
			fitColumns : true,
			striped : true, //奇偶行颜色不同
			collapsible : true,//可折叠
			url : 'reportInput/bidPlanList.action',
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
					if (row.pSign == 1)
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
					//addrow();
				}
			}, '-', {
				text : '修改',
				iconCls : 'icon-edit',
				handler : function() {
					//updaterow();
				}
			}, '-', {
				text : '删除',
				iconCls : 'icon-remove',
				handler : function() {
					//deleterow();
				}
			}, '-' ],
			onLoadSuccess : function() {
				$('#bidPlanTable').datagrid('clearSelections'); //一定要加上这一句，要不然datagrid会记住之前的选择状态，删除时会出问题
			}
		});
	});
</script>
</head>
<body>
	<div id="tabdiv" style="padding: 30">
		<table id="bidPlanTable" style="height: 300px"></table>
	</div>
	<div id="mydialog" class="easyui-dialog" style="width:300px;height:500px" >
		<form id="myform" action="" method="post">
			<table>
				<tr>
					<td>项目名称：</td>
					<td><input name="pName" type="text" value="" class="easyui-validatebox" data-options="
						required:'true',
						missingMessage:'项目名称必填'" />
					</td>
				</tr>
				<tr>
					<td>工程类别：</td>
					<td><input name="pType" value="" class="easyui-combobox" data-options="
						url:'json/pType.json',
						method:'get',
						valueField:'id',
						textField:'text',
						panelHeight:'auto'" /> 
					</td>
				</tr>
				<tr>
					<td>所属部门：</td>
					<td><select name="pService" value="" class="easyui-combobox" data-options="
						url:'reportInput/getDepartment.action',
						method:'post',
						valueField:'id',
						textField:'text',
						panelHeight:'auto'" />
					</td>
				</tr>
				<tr>
					<td>规模：</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>业主名称：</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>建设性质：</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>建设地点：</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>开标时间：</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>商务经理：</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>项目经理：</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>负责部门：</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>录入日期：</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>投标计划：</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>设计阶段：</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>