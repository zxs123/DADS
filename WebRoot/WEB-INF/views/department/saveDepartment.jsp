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
    <script language="javascript" src="<%= basePath %>js/common/jquery.js"></script>
    <script language="javascript" src="<%= basePath %>js/common/pageCommon.js" charset="utf-8"></script>
    <script language="javascript" src="<%= basePath %>js/common/PageUtils.js" charset="utf-8"></script>
    <script language="javascript" src="<%= basePath %>js/common/DemoData.js" charset="utf-8"></script>
    <script language="javascript" src="<%=basePath %>js/base-loading.js"></script>
	<script language="javascript" src="<%= basePath %>js/common/DataShowManager.js" charset="utf-8"></script>
    <link type="text/css" rel="stylesheet" href="<%= basePath %>css/common/pageCommon.css" />
    <script type="text/javascript">
    </script>
</head>
<body style="overflow-x: hidden;">

<!-- 标题显示 --> 
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="<%= basePath %>images/common/title_arrow.gif"/> 新增部门
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>
    <form action="<%= basePath %>manage/addDepartment">
        <div class="ItemBlock_Title1"><!-- 信息说明<DIV CLASS="ItemBlock_Title1">
            <IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="../style/blue/images/item_point.gif" /> 部门信息 </DIV>  -->
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                    <tr><td width="100">上级部门</td>
                        <td><select class="SelectStyle" id="parentId" name="parentId">
                        		<option value="1" selected="selected">请选择部门</option>
<!--                         		<option value="1" selected="selected">一级部门</option> -->
                        		<c:forEach items="${departmentList}" var="parentDepartment">
                        				<c:if test="${parentDepartment.parent.id == 1 and parentDepartment.id != 1}">
                        				<option value="${parentDepartment.id}">┠${parentDepartment.name}</option>
                        				<c:forEach items="${departmentList}" var="childDepartment">
                        					<c:if test="${childDepartment.parent.id == parentDepartment.id}">
                        						<option value="${childDepartment.id}">　┠${childDepartment.name}</option>
                        						<c:forEach items="${departmentList}" var="grandchildDepartment">
		                        					<c:if test="${grandchildDepartment.parent.id == childDepartment.id}">
		                        						<option value="${grandchildDepartment.id}">　　┠${grandchildDepartment.name}</option>
		                        					</c:if>
		                        				</c:forEach>
                        					</c:if>
                        				</c:forEach>
                        			</c:if>
                        		</c:forEach>
                            </select> 
                        </td>
                    </tr>
                    <tr><td>部门名称</td>
                        <td><input type="text" id="name" name="name" class="InputStyle"/> *</td>
                    </tr>
                    <tr><td>职能说明</td>
                        <td><textarea id="description" name="description" class="TextareaStyle"></textarea></td>
                    </tr>
                </table>
            </div>
        </div>
        
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <input type="image" src="<%= basePath %>images/common/save.png"/>
            <a href="javascript:history.go(-1);"><img src="<%= basePath %>images/common/goBack.png"/></a>
        </div>
    </form>
</div>

<div class="Description">
    说明：<br />
    1，上级部门的列表是有层次结构的（树形）。<br/>
    2，如果是修改：上级部门列表中不能显示当前修改的部门及其子孙部门。因为不能选择自已或自已的子部门作为上级部门。<br />
</div>

</body>
</html>
