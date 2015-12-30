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
<script language="javascript" src="<%=basePath%>js/common/jquery.js"></script>
<script language="javascript"
	src="<%=basePath%>js/common/pageCommon.js" charset="utf-8"></script>
<script language="javascript"
	src="<%=basePath%>js/common/PageUtils.js" charset="utf-8"></script>
<script language="javascript" src="<%=basePath%>js/common/DemoData.js"
	charset="utf-8"></script>
<%-- 	<script language="javascript" src="<%= basePath %>js/common/DataShowManager.js" charset="utf-8"></script>  --%>
<link type="text/css" rel="stylesheet" href="<%=basePath%>css/common/table.css" />
<%-- <link type="text/css" rel="stylesheet" href="<%=basePath%>css/common/style.css" /> --%>
<script type="text/javascript">
$(function(){
		$("#search_btn").click(function() {
			$("#searchForm").submit();
		});
	});
	
<%-- 	function edit(userId) {
		location.href = "<%=basePath%>
	manage/initEditUser/" + userId;
	} --%>

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
<body>
山东科技和宽松的核辐射
	<div id="Title_bar">
		<div id="Title_bar_Head">
			<div id="Title_Head"></div>
			<div id="Title">
				<!--页面标题-->
				<img border="0" width="13" height="13"
					src="<%=basePath%>images/common/title_arrow.gif" />业绩考核账号明细
			</div>
			<div id="Title_End"></div>
		</div>
	</div>


	<form id="searchForm" method="post" action="<%=basePath%>test/yjkh">
		<input type="hidden" id="currentpage" name="currentpage" value="${listPager.currentPage}" />
		<input type="hidden" id="pagemethod" name="pagemethod" value="none" />
<!-- 		<div class="mm_lbgltb">
			<div class="mm_lbgt">
				<tr>
				 
					<td>下拉条件查询：</td>
					<td><select name="dgType" class="SelectStyle">
							<option value="">条件一</option>
							<option value="">条件二</option>
							<option value="">条件...</option>
					</select></td>
					<td>模糊条件<input type="text" name="" value=""/></td>
				</tr>
				<input type="button" id="search_btn" value="查询" class="text_an3" />
				
			</div>

</div>
 -->

				<table id="mytable" width="100% align="center">
				<tr  style="background-color:#efefef">
					<!-- 表头-->						
							<th class= "title" nowrap="nowrap">>开户机构 </th>
							<th  nowrap="nowrap">客户号</th>
							<th  nowrap="nowrap">帐号</th>
							
							<th nowrap="nowrap">分配比例</th>
							<th nowrap="nowrap">客户名称 </th>
							<th nowrap="nowrap">类名称 </th>
							
							<th nowrap="nowrap">产品名称 </th>
							<th nowrap="nowrap">币种  </th>					
							<th nowrap="nowrap">汇率  </th>
							
							<th nowrap="nowrap">余额  </th>
							<th nowrap="nowrap">日均  </th>							
							<th nowrap="nowrap">期限 </th>
							
							<th nowrap="nowrap">营业税及附加  </th>
							<th nowrap="nowrap">>净收入  </th>	
							<th nowrap="nowrap">风险资产余额 </th>
							
							<th nowrap="nowrap">本季资本收费  </th>
							<th nowrap="nowrap">本年累计资本收费   </th>
							<th nowrap="nowrap">拨备率    </th>	
												
							<th nowrap="nowrap">拨备  </th>							
							<th nowrap="nowrap">经济利润   </th>
							<th nowrap="nowrap">折算系数  </th>	
							<th nowrap="nowrap">模拟利润 </th>							
						</tr>

						
					<!--显示数据列表：正在审批或审批完成的表单显示示例-->
					
					   <c:forEach items="${resultList}" var="resultlist">
	            			<tr>
	            			<c:forEach items="${resultlist }" var="list1">	            
	            			<td align="center" nowrap="nowrap">${list1}</td>
	            		</c:forEach>
	            			</tr>
            			</c:forEach>
				</table>

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
	
</body>
</html>
