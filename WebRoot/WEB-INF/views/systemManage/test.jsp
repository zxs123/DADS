<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<title>统计软件首页</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>jquery-easyui-1.4.4/themes/gray/easyui.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>jquery-easyui-1.4.4/themes/icon.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>css/common/pageCommon.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>css/privilege/file.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>css/privilege/jquery.treeview.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>css/index/top.css" />
<script type="text/javascript" src="<%=basePath%>jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=basePath%>js/base-loading.js"></script>
<script type="text/javascript" src="<%=basePath%>js/common/pageCommon.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>js/common/PageUtils.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>js/common/DemoData.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>js/privilege/jquery.treeview.js" charset="utf-8"></script>
</head>

<body class="easyui-layout">
	<div>
		<ul id='tree'>
			<c:forEach items="${privileges}" var="one">
				<c:if test="${one.fmCategory==100 }">
					<li id='li_${one.fmId }'>					
						<input type='checkbox' name='resourceIdList' id='cb_${one.fmId }'
							value="" onclick='doChecked("li_${one.fmId }", this.checked)'
							<c:forEach items="${privileges2}" var="nowPrivilege">
								<c:if test="${one.fmId == nowPrivilege.fmId}">checked='checked'</c:if>
							</c:forEach> 
						/>
					<label for='cb_${one.fmId }'><span class='userFolder'
							id='${one.fmId }'>${one.fmName}</span> </label>
					
					<ul>
						<c:forEach items="${privileges}" var="two">
							<c:if test="${one.fmId == two.fmCategory}">
								<li id='li_${two.fmId }'><input type='checkbox'
									name='resourceIdList' id='cb_${two.fmId }' value="${two.fmId} "
									onclick='doChecked("li_${two.fmId }", this.checked)'
									<c:forEach items="${privileges2}" var="nowPrivilege">
								<c:if test="${two.fmId == nowPrivilege.fmId}">checked='checked'</c:if>
							</c:forEach> />
									<label for='cb_${two.fmId }'><span class='userFolder'
										id='${two.fmId }'>${two.fmName}</span> </label></li>
							</c:if>
						</c:forEach>
					</ul>					
				</li>
				</c:if>
			</c:forEach>
		</ul>
	</div>
</body>

</html>