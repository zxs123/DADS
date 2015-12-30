<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<title>利润考核系统</title>
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/login/login.css" />
<script type="text/javascript" src="<%=basePath %>js/jquery-1.4.4.min.js"></script>
<script language="javascript" src="<%=basePath %>js/base-loading.js"></script>
<script type="text/javascript">
$(document).ready(function(){  
	   location.href = "<%=basePath %>manage/main"; 
}); 
</script>
</head>
<body  class="PageBody"  >

</body>

</html>