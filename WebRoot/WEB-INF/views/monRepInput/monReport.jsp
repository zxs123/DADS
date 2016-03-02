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
<title>月报录入</title>
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
	
</script>
</head>
<body>
	<div class="easyui-tabs" data-options="fit:true,plain:true">
		<div title="投标计划表" style="padding: 10px;"><iframe src="monRepInput/mon_bidPlan.action" style="border:0px;overflow:auto;width:100%;height:100%;"></iframe></div>
		<div title="投标情况表" style="padding: 10px;">待完善</div>
		<div title="收费情况表" style="padding: 10px;">待完善</div>
		<div title="收费计划表" style="padding: 10px;">待完善</div>
		<div title="合同签约情况表" style="padding: 10px;">待完善</div>
		<div title="合同签约计划表" style="padding: 10px;">待完善</div>
		<div title="中标情况表" style="padding: 10px;">待完善</div>
		<div title="中标未签合同情况表" style="padding: 10px;">待完善</div>
	</div>
</body>
</html>