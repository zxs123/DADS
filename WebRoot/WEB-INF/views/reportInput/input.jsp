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
<title>Ͷ��ƻ�</title>
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
			idField : 'pId', //�����ֶ�
			title : 'Ͷ��ƻ�', //����
			method : 'post',
			singleSelect : false, //��ѡ
			fitColumns : true,
			striped : true, //��ż����ɫ��ͬ
			collapsible : true,//���۵�
			url : 'reportInput/bidPlanList.action',
			pagination : true, //��ʾ��ҳ
			rownumbers : true, //��ʾ�к�
			columns : [ [ {
				field : 'ck',
				checkbox : true,
				width : 2
			}, //��ʾ��ѡ��
			{
				field : 'pName',
				title : '��Ŀ����',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pName;
				}
			}, {
				field : 'pType',
				title : '�������',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pType;
				}
			}, {
				field : 'pService',
				title : '��������',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pService;
				}
			}, {
				field : 'pScale',
				title : '��ģ',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pScale;
				}
			}, {
				field : 'pOwnername',
				title : 'ҵ������',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pOwnername;
				}
			}, {
				field : 'pConstruction',
				title : '��������',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pConstruction;
				}
			}, {
				field : 'pLocation',
				title : '����ص�',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pLocation;
				}
			}, {
				field : 'pOpentime',
				title : '����ʱ��',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pOpentime;
				}
			}, {
				field : 'pBmanager',
				title : '������',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pBmanager;
				}
			}, {
				field : 'pPmanager',
				title : '��Ŀ����',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pPmanager;
				}
			}, {
				field : 'pDepid',
				title : '������',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pDepid;
				}
			}, {
				field : 'pDate',
				title : '¼������',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pDate;
				}
			}, {
				field : 'pSign',
				title : 'Ͷ��ƻ�',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					if (row.pSign == 1)
						return "��";
					else
						return "��";
				}
			}, {
				field : 'pDesign',
				title : '��ƽ׶�',
				width : 100,
				align : 'center',
				formatter : function(value, row, index) {
					return row.pDesign;
				}
			} ] ],
			toolbar : [ {
				text : '����',
				iconCls : 'icon-add',
				handler : function() {
					//addrow();
				}
			}, '-', {
				text : '�޸�',
				iconCls : 'icon-edit',
				handler : function() {
					//updaterow();
				}
			}, '-', {
				text : 'ɾ��',
				iconCls : 'icon-remove',
				handler : function() {
					//deleterow();
				}
			}, '-' ],
			onLoadSuccess : function() {
				$('#bidPlanTable').datagrid('clearSelections'); //һ��Ҫ������һ�䣬Ҫ��Ȼdatagrid���ס֮ǰ��ѡ��״̬��ɾ��ʱ�������
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
					<td>��Ŀ���ƣ�</td>
					<td><input name="pName" type="text" value="" class="easyui-validatebox" data-options="
						required:'true',
						missingMessage:'��Ŀ���Ʊ���'" />
					</td>
				</tr>
				<tr>
					<td>�������</td>
					<td><input name="pType" value="" class="easyui-combobox" data-options="
						url:'json/pType.json',
						method:'get',
						valueField:'id',
						textField:'text',
						panelHeight:'auto'" /> 
					</td>
				</tr>
				<tr>
					<td>�������ţ�</td>
					<td><select name="pService" value="" class="easyui-combobox" data-options="
						url:'reportInput/getDepartment.action',
						method:'post',
						valueField:'id',
						textField:'text',
						panelHeight:'auto'" />
					</td>
				</tr>
				<tr>
					<td>��ģ��</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>ҵ�����ƣ�</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>�������ʣ�</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>����ص㣺</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>����ʱ�䣺</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>������</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>��Ŀ����</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>�����ţ�</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>¼�����ڣ�</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>Ͷ��ƻ���</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
				<tr>
					<td>��ƽ׶Σ�</td>
					<td><input name="pName" type="text" class="easyui-validatebox"  /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>