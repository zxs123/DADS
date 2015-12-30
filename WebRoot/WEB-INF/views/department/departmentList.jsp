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
    <script language="javascript" src="<%= basePath %>js/common/pageCommon.js" charset="utf-8"></script>
    <script language="javascript" src="<%= basePath %>js/common/PageUtils.js" charset="utf-8"></script>
    <script language="javascript" src="<%=basePath %>js/base-loading.js"></script>
    <script language="javascript" src="<%= basePath %>js/common/DemoData.js" charset="utf-8"></script>
 	<link type="text/css" rel="stylesheet" href="<%= basePath %>css/common/pageCommon.css" />
 	    <link type="text/css" rel="stylesheet" href="<%= basePath %>css/common/style.css" />
<script type="text/javascript">

$(function(){
	$("#search_btn").click(function() {
		$("#searchForm").submit();
	});
});

function goPage(page) {
		var numReg = /^[1-9]\d*$/;
		page = Number(page);
		var totalPages = Number('${listPager.totalPages}');
		if(-1 == page) {
			page = Number($("#forwardpage").val());
			if(numReg.test(page)) {
				if(1 > page) {
					page = 1;
				} else if(totalPages < page) {
					page = totalPages;
				}
			} else {
				alert("请输入正确格式的页数");
				return;
			}
		} else {
			if(1 > page) {
				page = 1;
			} else if(totalPages < page) {
				page = totalPages;
			}
		}
		$("#currentpage").val(page);
		$("#searchForm").submit();
	}
</script>
</head>
<body style="overflow-x: hidden;">
 
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="<%= basePath %>images/common/title_arrow.gif"/> 部门管理
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<form id="searchForm" method="post" action="<%=basePath %>manage/departmentList">
			<input type="hidden" id="currentpage"  name="currentpage" value="${listPager.currentPage}" />
			<input type="hidden" id="pagemethod" name="pagemethod" value="none" />
			部门名称:<input id="search_words" name="search_words" type="text" class="bbmz" value="${search_words}" />
			<input type="button" id="search_btn"  value="查询" class="text_an3" />
			<input type="button" id="addad_btn" onclick="javascript:location.href='<%= basePath %>manage/initAddDepartment'" value="新建部门" class="text_an3" />
		<div class="mm_lbgltb">
		<div id="MainArea">
		    <table cellspacing="0" cellpadding="0" class="TableStyle">      
		        <!-- 表头-->
		        <thead>
		            <tr align="center" valign="middle" id="TableTitle">
		                <td width="">部门名称</td>
		                <td width="">上级部门名称</td>
		                <td width="">职能说明</td>
		                <td>相关操作</td>
		            </tr>
		        </thead>
		
		        <!--显示数据列表-->
		        
		        <tbody id="TableData" class="dataContainer" >    
		            <c:forEach items="${departments}" var="department" varStatus="vs">
		           <tr class="TableDetail1 template">
		                <td>${department.name}&nbsp;</td>
		                <c:if test="${department.parent.id != department.id}"><td>${department.parent.name}&nbsp;</td></c:if>
		                 <c:if test="${department.parent.id == department.id}"><td>一级部门&nbsp;</td></c:if>
		                <td>${department.description}&nbsp;</td>
		                <td>
		                <c:if test="${user.department.id != department.id }">
		                	<c:forEach items="${privelegeList }" var="prevelege">
								<c:if test="${fn:containsIgnoreCase(prevelege.name,'部门删除')}">
									<a  href="<%= basePath %>${prevelege.url}/${department.id}">删除</a>
								</c:if>
								</c:forEach>
								<c:forEach items="${privelegeList }" var="prevelege">
								<c:if test="${fn:containsIgnoreCase(prevelege.name,'部门修改')}">
									<a  href="<%= basePath %>${prevelege.url}/${department.id}">修改</a>
								</c:if>
		                	 </c:forEach>
		                </c:if>
		                </td>
		            </tr>
		            </c:forEach>
		        </tbody>
		    </table>
		</div>
    </div>
    <div class="mm_lbgtfy">
					<div class="mm_fyz">总计<i class="fy_jl">${listPager.totalRows}</i>个记录  第<i class="fy_jl">${listPager.currentPage}</i>页/共<i class="fy_jl">${listPager.totalPages}</i>页</div>
					<div class="mm_fyq">
						<span class="mm_fyzt">
							<input type="button" onclick="goPage(1)" value="首页"  class="text_an1"/>
							<input type="button" onclick="goPage('${listPager.currentPage - 1}')" value="上一页"  class="text_an1"/>
							<input type="button" onclick="goPage('${listPager.currentPage + 1}')" value="下一页"  class="text_an1"/>
							<input type="button" value="末页" onclick="goPage('${listPager.totalPages}')"  class="text_an1"/>
							<input type="button"  onclick="goPage(-1)" value="转到"  class="text_an1"/>
							<input style="width:40px" id="forwardpage" type="text" maxlength="4" />页
						</span>
						<div class="clearfix"></div>
					</div>
				</div>
    </form>

<!--说明-->   
<div id="Description"> 
    说明：<br />
    1，列表页面只显示一层的（同级的）部门数据，默认显示最顶级的部门列表。<br />
    2，点击部门名称，可以查看此部门相应的下级部门列表。<br />
    3，删除部门时，同时删除此部门的所有下级部门。
</div>

</body>
</html>