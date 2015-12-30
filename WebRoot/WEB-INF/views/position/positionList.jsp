<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<title>导航菜单</title>
    <script language="javascript" src="<%= basePath %>js/common/jquery.js"></script>
    <script language="javascript" src="<%=basePath %>js/base-loading.js"></script>
    <script language="javascript" src="<%= basePath %>js/common/pageCommon.js" charset="utf-8"></script>
    <script language="javascript" src="<%= basePath %>js/common/PageUtils.js" charset="utf-8"></script>
    <script language="javascript" src="<%= basePath %>js/common/DemoData.js" charset="utf-8"></script>
<%-- 	<script language="javascript" src="<%= basePath %>js/common/DataShowManager.js" charset="utf-8"></script> --%> 
 	<link type="text/css" rel="stylesheet" href="<%= basePath %>css/common/pageCommon.css" />
 	    <link type="text/css" rel="stylesheet" href="<%= basePath %>css/common/style.css" />
    <script type="text/javascript">
    </script>
</head>
<body style="overflow-x: hidden;">
 
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="<%= basePath %>images/common/title_arrow.gif"/> 职务管理
        </div>
        <div id="Title_End"></div>
    </div>
</div>
		
<div class="mm_lbgltb">
<input type="button" id="addad_btn" onclick="javascript:location.href='<%= basePath %>manage/initAddPosition'" value="新建职位" class="text_an3" />
<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle">
       
        <!-- 表头-->
        <thead>
            <tr align=center valign=middle id=TableTitle>
                <td width="200px">职务名称</td>
                <td width="200px">职务描述</td>
                <td width="200px">备注</td>
                <td>相关操作</td>
            </tr>
        </thead>

        <!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="departmentList">    
            <c:forEach items="${positions}" var="position" varStatus="vs">
            <tr class="">
                <td>${position.positionName}&nbsp;</td>
                <td>${position.description}&nbsp;</td>
                 <td>${position.remark}&nbsp;</td>
                <td>
                	<c:forEach items="${privelegeList }" var="prevelege">
						<c:if test="${fn:containsIgnoreCase(prevelege.name,'职位删除')}">
							<a  href="<%= basePath %>${prevelege.url}/${position.positionId}">删除</a>
						</c:if>
						</c:forEach>
						<c:forEach items="${privelegeList }" var="prevelege">
						<c:if test="${fn:containsIgnoreCase(prevelege.name,'职位修改')}">
							<a  href="<%= basePath %>${prevelege.url}/${position.positionId}">修改</a>
						</c:if>
                	 </c:forEach>
                </td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
    
  
    
    <!-- 其他功能超链接 -->
</div>

<!--说明-->   
<div id="Description"> 
   
</div>

</body>
</html>