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
<script language="javascript" src="<%=basePath%>js/common/pageCommon.js" charset="utf-8"></script>
<script language="javascript"	src="<%=basePath%>js/common/PageUtils.js" charset="utf-8"></script>
<script language="javascript" src="<%=basePath%>js/laydate/laydate.js" charset="utf-8"></script>
<link type="text/css" rel="stylesheet" href="<%=basePath%>css/common/table.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>css/common/jquery.loadmask.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>css/common/style.css" />
 <link type="text/css" rel="stylesheet" href="<%= basePath %>css/common/date.css" />
 <style>
*{margin:0;padding:0;list-style:none;}
html{background-color:#E3E3E3; font-size:14px; color:#000; font-family:'微软雅黑'}
h2{line-height:30px; font-size:20px;}
a,a:hover{ text-decoration:none;}
pre{font-family:'微软雅黑'}
.box{width:970px; padding:10px 20px; background-color:#fff; margin:10px auto;}
.box a{padding-right:20px;}
.demo1,.demo2,.demo3,.demo4,.demo5,.demo6{margin:25px 0;}
h3{margin:10px 0;}
.layinput{height: 22px;line-height: 22px;width: 150px;margin: 0;}
</style>
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
	function download(){
		
		var query="s,"+$("#demo").val()+","+$("#departmentname").val()+","+$("#GUIYDH").val()+","+$("#username").val()+","+$("#KAIHJG").val()+","+$("#KEHHAO").val()
		+","+$("#ZHANGH").val()+","+$("#KEHZWM").val()+","+$("#FLDM").val()+","+$("#CPMC").val()+","+$("#KMH").val()+",e";
		var url="<%=basePath%>yjkh/downloadExcel";
		url += "/"+query;
		window.open(url);
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
					src="<%=basePath%>images/common/title_arrow.gif" />业绩考核账号明细
			</div>
			<div id="Title_End"></div>
		</div>
	</div>


	<form id="searchForm" method="post" action="<%=basePath%>yjkh/yjkh">
		<input type="hidden" id="currentpage" name="currentpage" value="${listPager.currentPage}" />
		<input type="hidden" id="pagemethod" name="pagemethod" value="none" />
		
			<div class="mm_lbgt">
					统计日期:<input class="laydate-icon" id="demo" name="RQ" value="${RQ}"/> 
					部门:<input id="departmentname" name="departmentname" type="text" class="bbmz" value="${departmentname}" />
					客户经理工号:<input id="GUIYDH" name="GUIYDH" type="text" class="bbmz" value="${GUIYDH}" />
					客户经理姓名:<input id="username" name="username" type="text" class="bbmz" value="${username}" />
					开户机构:<input id="KAIHJG" name="KAIHJG" type="text" class="bbmz" value="${KAIHJG}" />
					
			</div>
			<div class="mm_lbgt">
					客户号:<input id="KEHHAO" name="KEHHAO" type="text" class="bbmz" value="${KEHHAO}" />
					账号:<input id="ZHANGH" name="ZHANGH" type="text" class="bbmz" value="${ZHANGH}" />
					客户名称:<input id="KEHZWM" name="KEHZWM" type="text" class="bbmz" value="${KEHZWM}" />
					分类名称:<select class="RpSelectStyle" id="FLDM" name="FLDM">
							<option value=""  selected="selected">请选择分类名称</option>
							<c:forEach items="${cpfl}" var="cp">
								<option value="${cp[1]}" <c:if test="${cp[1]==FLDM }">selected="selected" </c:if>  >${cp[2]}</option>
							</c:forEach>	
					</select>
					产品名称:<input id="CPMC" name="CPMC" type="text" class="bbmz" value="${CPMC}" />
			</div>
			<div class="mm_lbgt">	
					
					
					科目号:<input id="KMH" name="KMH" type="text" class="bbmz" value="${KMH}" />
					<input type="button" id="search_btn"  value="查询" class="text_an3" />
					<input type="button" value="导出数据" onclick="download()"/>
			</div>
		
		<div class="mm_lbgltb">
			<div class="mm_lbgt">
				
			</div>




			<div id="MainArea" style="overflow:auto;with:200%;">
			<table id="mytable" width="100% align="center">
				<tr  style="background-color:#efefef">
					<!-- 表头-->			
							<th class= "title" nowrap="nowrap">统计日期</th>						
							<th class= "title" nowrap="nowrap">开户机构 </th>							
							<th  nowrap="nowrap">客户号</th>
							<th  nowrap="nowrap" >帐号</th>
							
							<th  nowrap="nowrap">部门</th>
							<th  nowrap="nowrap">工号</th>
							<th  nowrap="nowrap">客户经理</th>
							
							<th nowrap="nowrap">分配比例</th>
							<th nowrap="nowrap">客户名称 </th>
							<th nowrap="nowrap">类名称 </th>
							
							<th nowrap="nowrap">产品名称 </th>
							<th nowrap="nowrap">币种  </th>					
							<th nowrap="nowrap">汇率  </th>
							
							<th nowrap="nowrap">余额  </th>
							<th nowrap="nowrap">日均  </th>							
							<th nowrap="nowrap">期限 </th>
							
							<th nowrap="nowrap">资金成本 </th>
							<th nowrap="nowrap">利息收入</th>
							
							<th nowrap="nowrap">营业税及附加  </th>
							<th nowrap="nowrap">净收入 </th>	
							<th nowrap="nowrap">风险资产余额 </th>
							
							<th nowrap="nowrap">本季资本收费  </th>
							<th nowrap="nowrap">本年累计资本收费   </th>
							<th nowrap="nowrap">拨备率   </th>	
												
							<th nowrap="nowrap">拨备  </th>							
							<th nowrap="nowrap">经济利润  </th>
							<th nowrap="nowrap">折算系数  </th>	
							<th nowrap="nowrap">模拟利润 </th>	
							<th nowrap="nowrap">科目号 </th>						
						</tr>

						
					<!--显示数据列表：正在审批或审批完成的表单显示示例-->
					
					   <c:forEach items="${resultList}" var="resultlist">
	            			<tr class="relativeTag">
	            			<c:forEach items="${resultlist }" var="list1">	            
	            			<td align="center" nowrap="nowrap">${list1}</td>
	            		</c:forEach>
	            			</tr>
            			</c:forEach>
				</table>
				</div>

				<div class="mm_lbgtfy">
					<div class="mm_fyz">
						总计<i class="fy_jl">${listPager.totalRows}</i>个记录 第<i class="fy_jl">${listPager.currentPage}</i>页/共<i
							class="fy_jl">${listPager.totalPages}</i>页
					</div>
					<div class="mm_fyq">
						<span class="mm_fyzt">
						 每页:<input style="width: 40px" id="size" type="text" name="size"  value="${size}" ></input>
						 <input type="button" onclick="goPage(1)" value="首页" class="text_an1" />
						 <input type="button" onclick="goPage('${listPager.currentPage - 1}')" value="上一页" class="text_an1" />
						 <input type="button" onclick="goPage('${listPager.currentPage + 1}')" value="下一页" class="text_an1" />
						 <input type="button" value="末页" onclick="goPage('${listPager.totalPages}')" class="text_an1" />
						 <input type="button" onclick="goPage(-1)" value="转到" class="text_an1" />
						 <input style="width: 40px" id="forwardpage" type="text" maxlength="4" />页
						</span>
						<div class="clearfix"></div>
					</div>
				</div>

			</div>
	</form>
	<script>
!function(){
laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
laydate({elem: '#demo'});//绑定元素
}();
//日期范围限制
var start = {
    elem: '#start',
    format: 'YYYY-MM-DD',
    min: laydate.now(), //设定最小日期为当前日期
    max: '2099-06-16', //最大日期
    istime: true,
    istoday: false,
    choose: function(datas){
         end.min = datas; //开始日选好后，重置结束日的最小日期
         end.start = datas //将结束日的初始值设定为开始日
    }
};
var end = {
    elem: '#end',
    format: 'YYYY-MM-DD',
    min: laydate.now(),
    max: '2099-06-16',
    istime: true,
    istoday: false,
    choose: function(datas){
        start.max = datas; //结束日选好后，充值开始日的最大日期
    }
};
laydate(start);
laydate(end);
//自定义日期格式
laydate({
    elem: '#test1',
    format: 'YYYY年MM月DD日',
    festival: true, //显示节日
    choose: function(datas){ //选择日期完毕的回调
        alert('得到：'+datas);
    }
});
//日期范围限定在昨天到明天
laydate({
    elem: '#hello3',
    min: laydate.now(-1), //-1代表昨天，-2代表前天，以此类推
    max: laydate.now(+1) //+1代表明天，+2代表后天，以此类推
});
</script>
</body>
</html>
