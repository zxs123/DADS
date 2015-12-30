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
<title>导航菜单</title>
<script language="JavaScript" src="<%= basePath %>js/index/jquery.js"></script>
<script language="JavaScript" src="<%= basePath %>js/index/menu.js"></script>
<link type="text/css" rel="stylesheet" href="<%= basePath %>css/index/menu.css" />
</head>
<body style="margin: 0">
<div id="Menu">
    <ul id="MenuUl">
        	<c:forEach items="${privileges}" var="one">
				<c:if test="${empty  one.parent.id }">
				 <li class="level1">
            	 	<div onclick="menuClick(this);" class="level1Style"><img src="<%= basePath %>${one.imageUrl}" class="Icon" />  ${one.name}</div>
            		<ul style="display: none;" class="MenuLevel2">		              
		            <c:forEach items="${privileges}" var="two">
						<c:if test="${one.id == two.parent.id}">
				         	 <li class="level2">
                   			 <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>${two.url}">${two.name }</a></div>
               				 </li>
			     		</c:if>
			        </c:forEach>
			        </ul>
			        </li>
				</c:if>				
			</c:forEach>
   

	<%-- <li class="level1">
	    <div onClick="menuClick(this);" class="level1Style"><img src="<%= basePath %>images/index/MenuIcon/FUNC20082.gif" class="Icon" />报表</div>
	    <ul style="display: none;" class="MenuLevel2">
	     	<li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>report/initUploadExcel">每日利率报表上传</a></div>
	        </li>
	        <li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>report/ReportList">每日利率报表</a></div>
	        </li>
	        <li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>report/initAddDsfpb">新增对私分配表</a></div>
	  		</li>
	  		<li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>report/initEditDsfpb">编辑-新增对私分配表</a></div>
	  		</li>
	  		<li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>report/initAddDsfpbExcel">批量新增对私分配表</a></div>
	  		</li>
	  		<li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>report/initEditDsfpbExcel">批量编辑对私分配表</a></div>
	  		</li>
	    </ul>
	</li>
	
	<li class="level1">
	    <div onClick="menuClick(this);" class="level1Style"><img src="<%= basePath %>images/index/MenuIcon/FUNC20082.gif" class="Icon" />对公分配表</div>
	    <ul style="display: none;" class="MenuLevel2">
	     	
	        <li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>report/initAddDgfpb">新增对公分配表</a></div>
	  		</li>
	  		<li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>report/initEditDgfpb">编辑-新增对私分配表</a></div>
	  		</li>
	  		<li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>report/initAddDgfpbExcel">批量新增对公分配表</a></div>
	  		</li>
	  		<li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>report/initEditDgfpbExcel">批量编辑对公分配表</a></div>
	  		</li>
	  		<li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>report/DgkhgyfpList">维护对公客户柜员分配</a></div>
	  		</li>
	    </ul>
	</li>
	
	<li class="level1">
	    <div onClick="menuClick(this);" class="level1Style"><img src="<%= basePath %>images/index/MenuIcon/FUNC20057.gif" class="Icon" />审批流转</div>
	    <ul style="display: none;" class="MenuLevel2">
	     	<li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>flow/initFlowProcessDefinition">审批流程管理</a></div>
	        </li>
	        <li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>test/flowTemplatelist">表单模板管理</a></div>
	        </li>
	        <li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>test/formTemplateList">起草申请</a></div>
	        </li>
	        <li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>flow/myTaskList">待我审批</a></div>
	        </li>
	        <li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>flow/myTaskListHistory">我的审批记录</a></div>
	        </li>
	        <li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>flow/mySubmittedList">我的申请查询</a></div>
	        </li>
	    </ul>
	</li> --%>
<!--20150210  add  start-->	 
	<%-- <li class="level1">
	    <div onclick="menuClick(this);" class="level1Style"><img src="<%= basePath %>images/index/MenuIcon/FUNC20057.gif" class="Icon" />业绩考核账号明细</div>
	    <ul style="display: none;" class="MenuLevel2">
	     	<li class="level2">
	            <div class="level2Style"><img src="<%= basePath %>images/index/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="<%= basePath %>test/yjkh">业绩考核账号明细</a></div>
	        </li>
	    </ul>
	</li> --%>
	 </ul>
<!--20150210  add  end-->	 	
</div>
</body>


</html>