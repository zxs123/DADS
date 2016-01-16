<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<title>新增用户</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>jquery-easyui-1.4.4/themes/gray/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>jquery-easyui-1.4.4/themes/icon.css" />
<script type="text/javascript"
	src="<%=basePath%>jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=basePath%>js/base-loading.js"></script>
  	<script type="text/javascript">
		jQuery(function($){
			//下拉表格初始化
			$('#addDeptId').combobox({
				valueField:'depId', //值字段
			    textField:'depName', //显示的字段
			    url:'<%=basePath%>dept/queryAll.action',
			    panelHeight:'auto',
			    required:true,
				editable:false//不可编辑，只能选择
			});
		});
		
		function addOrUpdateUser(){
			var r = $('#userForm').form('validate');
			if(!r) {
				return false;
			}
			$.post("<%=basePath%>user/addOrUpdate.action",$("#userForm").serializeArray(),function(data){
				$('#MyPopWindow').window('close');
				$('#userTable').datagrid('reload');  
				$.messager.alert('提示',data.mes,'info');
			});
		}
		
	</script>
  </head>
  
  <body>
  	<!-- 验证还是jquery-validation好用，这里省事没用 -->
	<form id="userForm" method="post" style="margin: 10;text-align: center;">
		<input type="hidden" name="id" id="uuid">
		名字：<input name="name" style="width: 200" validType="length[3,30]" class="easyui-validatebox" required="true"> <br>
		密码：<input name="password" style="width: 200" type="password"  validType="length[3,30]" class="easyui-validatebox" required="true"> <br>
		年龄：<input class="easyui-numberspinner" name="age" min="1" max="120" increment="1" style="width:200px;"></input><br>
		生日：<input name="birthday" style="width: 200" class="Wdate" onClick="WdatePicker()"><br>
		部门：<input id="addDeptId" name="deptId" style="width: 200"><br>
		<br>
		<a href="#" id="btn-back" onclick="closeWindow();" class="easyui-linkbutton" iconCls="icon-back">返回</a>
		<a href="#" id="btn-add" onclick="addOrUpdateUser();" class="easyui-linkbutton" iconCls="icon-save">保存</a>
	</form>
  </body>
</html>
