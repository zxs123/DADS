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
<title>后台首页</title>
</head>

<frameset rows="100,*,25" framespacing="0" border="0" frameborder="0">
    <frame src="<%=basePath%>manage/top" name="TopMenu"  scrolling="no" noresize />
    <frameset cols="180,*" id="resize">
        <frame noresize name="menu" src="<%=basePath%>manage/left" scrolling="yes" />
        <frame noresize name="right" src="<%=basePath%>manage/right" scrolling="yes" />
    </frameset>
    <frame noresize name="status_bar" scrolling="yes" src="<%=basePath%>manage/bottom" />
</frameset>
<noframes>
<body>
</body>
</noframes>

</html>