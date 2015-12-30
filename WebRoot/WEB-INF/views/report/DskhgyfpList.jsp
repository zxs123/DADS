<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<title>导航菜单</title>
<script language="javascript" src="<%=basePath %>js/base-loading.js"></script>
<script language="javascript" src="<%=basePath%>js/common/jquery.js"></script>
<script language="javascript"
	src="<%=basePath%>js/common/pageCommon.js" charset="utf-8"></script>
<script language="javascript"
	src="<%=basePath%>js/common/PageUtils.js" charset="utf-8"></script>
<script language="javascript" src="<%=basePath%>js/common/DemoData.js"
	charset="utf-8"></script>
<%-- 	<script language="javascript" src="<%= basePath %>js/common/DataShowManager.js" charset="utf-8"></script>  --%>
<link type="text/css" rel="stylesheet" href="<%=basePath%>css/common/pageCommon.css" />
<link type="text/css" rel="stylesheet"
	href="<%=basePath%>css/common/style.css" />
<script type="text/javascript">
$(function(){
		$("#search_btn").click(function() {
			$("#searchForm").submit();
		});
	});

function del(fldm,ZHANGH) {
	if(confirm("确定要删除该记录吗")) {
		$.ajax( {
			url : "<%=basePath %>report/delDskhgyfp.do?",
			type : 'post',
			async : false,
			data : {
				fldm:fldm,
				ZHANGH:	ZHANGH
			},
			dataType : 'json',
			success : function(data) {
				if("success" == data.result) {
					alert("删除成功");
					$("#searchForm").submit();
				} else {
					alert("删除失败");
				}
			}
		});
	}
}


function edit(userId) {
// 	alert("kk"+userId);
	location.href = "<%=basePath %>report/initEditDgkhgyfp/" + userId;
}

	function goPage(page) {
		var numReg = /^[1-9]\d*$/;
		page = Number(page);
		var totalPages = Number('${listPager.totalPages}');
		if (-1 == page) {
			page = Number($("#forwardpage").val());
			if (numReg.test(page)) {
				if (1 > page) {
					page = 1;
				} else if (totalPages < page) {
					page = totalPages;
				}
			} else {
				alert("请输入正确格式的页数");
				return;
			}
		} else {
			if (1 > page) {
				page = 1;
			} else if (totalPages < page) {
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
			<div id="Title">
				<!--页面标题-->
				<img border="0" width="13" height="13"
					src="<%=basePath%>images/common/title_arrow.gif" />维护对私分配表
			</div>
			<div id="Title_End"></div>
		</div>
	</div>


	<form id="searchForm" method="post" action="<%=basePath%>report/DskhgyfpList">
		<input type="hidden" id="currentpage" name="currentpage" value="${listPager.currentPage}" />
		<input type="hidden" id="pagemethod" name="pagemethod" value="none" />
		<div class="mm_lbgltb">
			<div class="mm_lbgt">
				<tr>
				 
					<td>关系类型：</td>
					<td><select name="fldm" class="SelectStyle">
							<option value="">请选择关系类型</option>
							<option value="DSCK" <c:if test="${fldm=='DSCK' }">selected="selected" </c:if>>对私存款</option>
							<option value="DSDK" <c:if test="${fldm=='DSDK' }">selected="selected" </c:if>>对私贷款</option>
					</select></td>
					<td>客户号/账号<input  type="text" name="ZHANGH" value="${ZHANGH}"/></td>
					<td>客户名称<input type="text" name="kehzwm" value="${kehzwm}"/></td>
					<td>柜员代号<input size="7" type="text" name="GUIYDH" value="${GUIYDH}"/></td>
					<td>柜员姓名<input size="7" type="text" name="name" value="${name}"/></td>
				</tr>
				<input type="button" id="search_btn" value="查询" class="text_an3" />
			</div>




			<div id="MainArea">
				<table cellspacing="0" cellpadding="0" class="TableStyle">
					<!-- 表头-->
					<thead>
						<tr align="center" valign="middle" >
							<td width="">关系类型</td>
							<td width="">账号类型</td>
							<td width="">客户号/账号 </td>
							<td width="">客户名称</td>
							<td width="">柜员代号</td>
							<td width="">柜员姓名</td>
							<td width="">分配比例</td>			
							<td width="">操作</td>			
						</tr>
					</thead>
						
					<!--显示数据列表：正在审批或审批完成的表单显示示例-->
					<thead>
					
					   <c:forEach items="${resultList}" var="resultlist">
	            			<tr align="center" valign="middle">
	            			<c:forEach items="${resultlist }" var="list1" varStatus="vs" >	
	            			<c:if test="${vs.index == 0  && list1 == 'DSCK'}"><td>对私存款</td></c:if> 
	            			<c:if test="${vs.index == 0  && list1 == 'DSDK'}"><td>对私贷款</td></c:if>  
	            			<c:if test="${vs.index == 1  && list1 == '2'}"><td>账号</td></c:if> 
	            			<c:if test="${vs.index == 1  && list1 == '3'}"><td>客户号</td></c:if>          
	            			<c:if test="${vs.index != 1 && vs.index != 0 }"><td>${list1 }</td></c:if> 
	            			</c:forEach>
	            		<td>
	            			<a href="#" onclick="del('${resultlist[0]}','${resultlist[2]}')">删除</a>
<%-- 	            			<a href="#" onclick="edit('${resultlist[2]}')">修改</a> --%>
	            		</td>
	            			</tr>
            			</c:forEach>
					</thead>
				</table>
				</div>

				<div class="mm_lbgtfy">
					<div class="mm_fyz">
						总计<i class="fy_jl">${listPager.totalRows}</i>个记录 第<i class="fy_jl">${listPager.currentPage}</i>页/共<i
							class="fy_jl">${listPager.totalPages}</i>页
					</div>
					<div class="mm_fyq">
						<span class="mm_fyzt"> <input type="button"
							onclick="goPage(1)" value="首页" class="text_an1" /> <input
							type="button" onclick="goPage('${listPager.currentPage - 1}')"
							value="上一页" class="text_an1" /> <input type="button"
							onclick="goPage('${listPager.currentPage + 1}')" value="下一页"
							class="text_an1" /> <input type="button" value="末页"
							onclick="goPage('${listPager.totalPages}')" class="text_an1" /> <input
							type="button" onclick="goPage(-1)" value="转到" class="text_an1" />
							<input style="width: 40px" id="forwardpage" type="text"
							maxlength="4" />页
						</span>
						<div class="clearfix"></div>
					</div>
				</div>

			</div>
	</form>
<div class="Description">
    说明：<br />
    1，删除一条数据时：应该删除该数据对应账号/客户号下的所有数据。<br />
</div>
</body>
</html>
