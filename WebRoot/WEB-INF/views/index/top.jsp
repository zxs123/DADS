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
<title>top</title>
	<link type="text/css" rel="stylesheet" href="<%= basePath %>css/index/top.css" />
</head>

<body class="PageBody" style="margin: 0">
 <div id="CenterAreaBg">
	<div id="Head1">
		<div id="Logo">
			<a id="msgLink" href="javascript:void(0)"></a>
           <!--  <font color="#0000CC" style="color:#F1F9FE; font-size:28px; font-family:Arial Black, Arial">利润考核系统</font>  -->
			<!--<img border="0" src="style/blue/images/logo.png" />-->
        </div>
		
		<div id="Head1Right">
			<div id="Head1Right_UserName">
                <img border="0" width="13" height="14" src="<%= basePath %>images/index/top/user.gif" /> 您好，<b>${userName}</b>
			</div>
			<div id="Head1Right_UserDept"></div>
			<div id="Head1Right_UserSetup">
            	<a href="javascript:void(0)">
					<img border="0" width="13" height="14" src="<%= basePath %>images/index/top/user_setup.gif" /> 个人设置
				</a>
			</div>
			<div id="Head1Right_Time"></div>
		</div>
		
        <div id="Head1Right_SystemButton">
            <a target="_parent" href="<%= basePath %>manage/logout">
				<img width="78" height="20" alt="退出系统"  src="<%= basePath %>images/index/top/logout.gif" />
			</a>
        </div>
		
       <%--  <div id="Head1Right_Button">
            <a target="desktop" href="/desktop?method=show">
				<img width="65" height="20" alt="显示桌面" src="<%= basePath %>images/index/top/desktop.gif" />
			</a>
        </div> --%>
	</div>
    
    <div id="Head2">
        <div id="Head2_Awoke">
            <ul id="AwokeNum">
              
                <li><a href="<%= basePath %>flow/myTaskList" target="right">
                		<img border="0" width="12" height="14" src="<%= basePath %>images/index/top/wait.gif" /> 
                		待办事项（<span id="wait" class="taskListSize">${flowCount}</span>）
                	</a>
                </li>
				  
                <!-- 是否有待审批文档的提示2，提示审批 -->
                <li id="messageArea">
                	<a href="<%= basePath %>flow/myTaskList" target="right">您有  ${flowCount} 个待审批文档，请及时审批！★★★★★</a>
                </li>
            </ul>
        </div>
        
		<div id="Head2_FunctionList">
			<!-- <marquee style="WIDTH: 100%;" onMouseOver="this.stop()" onMouseOut="this.start()" 
				scrollamount=1 scrolldelay=30 direction=left>
				<b>这是滚动的消息</b>
			</marquee> -->
		</div>
	</div>
</div>
</body>
</html>