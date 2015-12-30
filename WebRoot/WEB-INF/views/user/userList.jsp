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
      <link type="text/css" rel="stylesheet" href="<%= basePath %>css/common/style.css" />
   <link type="text/css" rel="stylesheet" href="<%= basePath %>css/common/pageCommon.css" />
<script type="text/javascript">
$(function(){
		$("#search_btn").click(function() {
			$("#searchForm").submit();
		});
	});
	
	function del(userId) {
		if(confirm("确定要删除该记录吗")) {
			$.ajax( {
				url : "<%=basePath %>manage/delUser.do?",
				type : 'post',
				async : false,
				data : {
					userId	:	userId
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
	
	function initPass(userId) {
		if(confirm("确定重置密码为“123456”吗？")) {
			$.ajax( {
				url : "<%=basePath %>manage/initPass",
				type : 'post',
				async : false,
				data : {
					userId	:	userId
				},
				dataType : 'json',
				success : function(data) {
					if("success" == data.result) {
						alert("初始化密码成功");
						$("#searchForm").submit();
					} else {
						alert("初始化密码失败");
					}
				}
			});
		}
	}
	
	function edit(userId) {
		location.href = "<%=basePath %>manage/initEditUser/" + userId;
	}
	
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
            <img border="0" width="13" height="13" src="<%= basePath %>images/common/title_arrow.gif"/> 用户管理
        </div>
        <div id="Title_End"></div>
    </div>
</div>
<form id="searchForm" method="post" action="<%=basePath %>manage/userList">
			<input type="hidden" id="currentpage"  name="currentpage" value="${listPager.currentPage}" />
			<input type="hidden" id="pagemethod" name="pagemethod" value="none" />
					登录名/姓名:<input id="search_words" name="search_words" type="text" class="bbmz" value="${search_words}" />
					部门名称:<input id="departmentName" name="departmentName" type="text" class="bbmz" value="${departmentName}" />
					<input type="button" id="search_btn"  value="查询" class="text_an3" />
					<input type="button" id="addad_btn" onclick="javascript:location.href='<%= basePath %>manage/initAddUser'" value="新建用户" class="text_an3" />
			<br />		
	<div class="mm_lbgltb">
	<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle"> 
        <!-- 表头-->
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
                <td width="100px">登录名</td>
                <td width="100px">姓名</td>
                <td width="200px">所属部门</td>
                <td width="200px">职务</td>
                <td width="200px">角色</td>
                <td>备注</td>
                <td>相关操作</td>
            </tr>
        </thead>
         <tbody id="TableData" class="dataContainer"  >
        <c:forEach items="${users }" var="user">
       		<tr class="TableDetail1 template">
                <td width="100">${user.loginName}&nbsp;</td>
                <td width="100">${user.name}&nbsp;</td>
                <td width="200">${user.department.name }</td>
                <td width="200">${user.position.positionName}</td>
                <td width="200">
                <c:forEach items="${user.roles }" var="role">
               		 ${role.name}&nbsp
                </c:forEach>
				</td>
                <td>${user.description}&nbsp;</td>
                <td><c:forEach items="${privelegeList }" var="prevelege">
								<c:if test="${fn:containsIgnoreCase(prevelege.name,'用户删除')}">
									<a href="#" onclick="del(${user.id})">删除</a>
								</c:if>
							</c:forEach> <c:forEach items="${privelegeList }" var="prevelege">
								<c:if test="${fn:containsIgnoreCase(prevelege.name,'用户修改')}">
									<a href="#" onclick="edit(${user.id})">修改</a>
								</c:if>
							</c:forEach> <c:forEach items="${privelegeList }" var="prevelege">
								<c:if test="${fn:containsIgnoreCase(prevelege.name,'用户初始化密码')}">
									<a href="#" onclick="initPass(${user.id})">初始化密码</a>
								</c:if>
							</c:forEach></td>
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
		
</body>
</html>