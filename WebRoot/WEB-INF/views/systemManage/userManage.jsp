<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	System.out.println(path);
	System.out.println(basePath);
%>
<!DOCTYPE html>
<html>  
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<title>系统管理--用户管理</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>jquery-easyui-1.3.6/themes/gray/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>jquery-easyui-1.3.6/themes/icon.css" />
<script type="text/javascript"
	src="<%=basePath%>jquery-easyui-1.3.6/jquery-1.7.1.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>jquery-easyui-1.3.6/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=basePath%>js/base-loading.js"></script>
<script type="text/javascript" src="<%=basePath%>js/loginInfoMain.js"></script>
<link type="text/css" rel="stylesheet"
	href="<%=basePath%>css/tooltip-form-style.css" />
</head>  
    
<body>
<!-- 表格 -->
<table 	id="loginInfoTable"
		title="用户信息一览"  
		border="0"
		cellspacing="0"
		cellpadding="0"
		iconCls="icon-edit" 
		width="98%" 
		idField="loginId" 
		pagination="true"
		remoteSort="false" 
		singleSelect="false" 
		showFooter="false"
		striped="true" 
		url="<%=basePath%>/ospm/loginInfo/doLoginInfoSearch.jhtml">
	<thead>
		<tr align="center">
			<th field="ck" width="20" checkbox="true" width="20"></th>
			<th field="loginCode"  width="200">用户名</th>
			<th field="statuValue"  width="100">状态</th>
			<th field="opt" formatter='optFormater' width="150">操作</th>
		</tr>
	</thead>
</table>

<!-- 添加 -->
<div id="loginInfoAdd" icon="icon-save"
	style="padding: 5px; width: 500px; height: 300px;">
	<h5 id="loginInfoAdd_message" style="color: red;"></h5>
	<div class="ToolTip_Form" id="table_loginInfoAdd" onkeydown="if(event.keyCode==13){loginInfoAdd();}">
        <ul>
			<li>
				<label>用户名：</label>
				<input type="text" class="easyui-validatebox" id="loginInfoAdd_loginCode" maxlength="20" required="true"></input>
			</li>
			<li>
				<label>密码：</label>
				<input type="password" class="easyui-validatebox" id="loginInfoAdd_password" maxlength="20" required="true"></input>
			</li>
			<li>
				<a href="#" class="easyui-linkbutton" icon="icon-ok" onclick="loginInfoAdd();">提交</a>
				<a href="#" class="easyui-linkbutton" icon="icon-redo" onclick="loginInfoAddReset();">重置</a>
			</li>
		</ul>
	</div>
</div>

<!-- 编辑 -->
<div id="loginInfoEdit" icon="icon-save"
	style="padding: 5px; width: 500px; height: 300px;">
	<h5 id="loginInfoEdit_message" style="color: red;"></h5>
	<div class="ToolTip_Form" id="table_loginInfoEdit" onkeydown="if(event.keyCode==13){loginInfoEdit();}">
		<input type="hidden" id="loginInfoEdit_loginId"></input>
        <ul>
			<li>
				<label>用户名：</label>
				<label id="loginInfoEdit_loginCode"></label>
			</li>
			<li>
				<label>密码：</label>
				<input type="password" class="easyui-validatebox" id="loginInfoEdit_password" maxlength="20" required="true"></input>
			</li>
			<li>
				<label>重复密码：</label>
				<input type="password" class="easyui-validatebox" id="loginInfoEdit_repassword" maxlength="20" required="true"></input>
			</li>
			<li>
				<a href="#" class="easyui-linkbutton" icon="icon-ok" onclick="loginInfoEdit();">提交</a>
			</li>
		</ul>
	</div>
</div>
</body>  
</html>