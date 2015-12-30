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
<title>bottom</title>
<link type="text/css" rel="stylesheet" href="<%= basePath %>css/index/statusbar.css" />
</head>

<body style="margin:0"> 

<div id="StatusBar">
    <%-- <div id="Online">
    	在线人员：共 <span class="OnlineUser" id="onlineUserNum"></span> 人
        <span class="OnlineView"><a href="javascript:void(0)">[查看在线名单]</a></span>
    </div>
    <div id="Info">
    	<a href="http://www.itcast.cn" title = "传智播客首页" target="_blank">传智播客首页</a> |
        <a href="http://bbs.itcast.cn" title = "传智播客BBS" target="_blank">传智播客BBS</a> 
    </div>
    <div id="DesktopText">
        <a href="javascript:void(0)"><img border="0" src="<%= basePath %>images/index/top/text.gif"/>便笺</a>
        <span id=TryoutInfo></span>
        <span id="Version">
            <a href="javascript:void(0)">
            	<img border="0" width="11" height="11" src="<%= basePath %>images/index/top/help.gif" /> 
                <img border="0" width="40" height="11" src="<%= basePath %>images/index/top/version.gif" />
            </a>
        </span>
    </div> --%>
</div>

</body>
</html>