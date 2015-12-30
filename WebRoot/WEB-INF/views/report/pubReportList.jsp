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
<script language="javascript" src="<%=basePath %>js/base-loading.js"></script>
    <script language="javascript" src="<%= basePath %>js/common/jquery.js"></script>
    <script language="javascript" src="<%= basePath %>js/common/pageCommon.js" charset="utf-8"></script>
    <script language="javascript" src="<%= basePath %>js/common/PageUtils.js" charset="utf-8"></script>
 <!--   <script language="javascript" src="<%= basePath %>js/common/DemoData.js" charset="utf-8"></script> --> 
	<!--  <script language="javascript" src="<%= basePath %>js/common/DataShowManager.js" charset="utf-8"></script> -->
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
<body>

<div id="Title_bar">
    <div id="Title_bar_Head"> 
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="<%= basePath %>images/common/title_arrow.gif"/> 每日利率报表
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<form id="searchForm" method="post" action="<%=basePath %>test/ReportList">
			<input type="hidden" id="currentpage"  name="currentpage" value="${listPager.currentPage}" />
			<input type="hidden" id="pagemethod" name="pagemethod" value="none" />
			<div class="mm_lbgltb">
				<div class="mm_lbgt">
					活动名称:<input id="search_words" name="search_words" type="text" class="bbmz" value="${search_words}" />
					<input type="button" id="search_btn"  value="查询" class="text_an3" />
					<input type="button" id="addad_btn" onclick="javascript:location.href='./initAddMessage?type=2'" value="新增活动" class="text_an3" />
				</div>
				
<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle">
       
        <!-- 表头-->
        <thead>
            <tr align=center valign=middle id=TableTitle>
                <td width="100">日期</td>
                <td width="100">市场管制标志</td>
                <td width="100">固定浮动标志</td>
                <td width="100">货币代码</td>
                <td width="100">期限</td>
                <td width="100">光大ftp</td>
                <td width="100">更新操作者</td>
                <td width="100">更新日期</td>
                <td>备注</td>
                <td>相关操作</td>
            </tr>
        </thead>
        <!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="userList">
            <c:forEach items="${rateReportList}" var="bbf">
	            <tr class="TableDetail1 template">
	            	<td>${bbf.RQ}</td>
	            	<td>${bbf.SCGZ_FLG}</td>
	            	<td>${bbf.GDFD_FLG}</td>
	            	<td>${bbf.HUOBDM}</td>
	            	<td>${bbf.QIXIAN}</td>
	            	<td>${bbf.GDFTP}</td>
	            	<td>${bbf.UPDATE_USER}</td>
	            	<td>${bbf.UPDATE_DATE}</td>
	            </tr>
            </c:forEach>
        </tbody>
        </table>  
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

</body>
</html>