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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<title>统计软件首页</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>jquery-easyui-1.4.4/themes/gray/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>jquery-easyui-1.4.4/themes/icon.css" />
<script type="text/javascript"
	src="<%=basePath%>jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=basePath%>js/base-loading.js"></script>
<link type="text/css" rel="stylesheet"
	href="<%=basePath%>css/index/top.css" />
</head>

<body class="easyui-layout">
	<div id="header" region="north" split="false" border="false"
		style="height: 100px; overflow: hidden;">
		<table style="width:100%;border: 0px;border-collapse:collapse;">
		<tr>
			<td background="images/top_01.gif" width="26" height="33">&nbsp;</td>
			<td background="images/top_02.gif" width="285" height="33">&nbsp;</td>
			<td background="images/top_03.gif" width="490" height="33">&nbsp;</td>
			<td align="right" height="33" colspan="4"
				background="images/top_04.gif">
				<div id="menuTop">
					<img src="images/dote.png" /><a href="#" onClick="backHome()"><span>&nbsp;返回首页</span>
					</a>&nbsp; <img src="images/dote.png" /><a href="help.doc" onclick=""><span>&nbsp;使用说明</span>
					</a>&nbsp; <img src="images/dote.png" /><a
						onClick="return closeSystem()" href="default/ExitSystem"
						target="_blank"><span>&nbsp;安全退出</span>
					</a>&nbsp;
				</div></td>
		</tr>
		<tr>
			<td background="images/top_07.gif" width="26" height="61">&nbsp;</td>
			<td background="images/top_08.gif" width="285" height="61">&nbsp;</td>
			<td height="61" colspan="2" background="images/1_09.gif">&nbsp;</td>
			<td background="images/top_11.gif" width="52" height="61">&nbsp;
			</td>
			<td height="61" colspan="2" background="images/top_12.gif">&nbsp;</td>
		</tr>
		<tr>
			<td background="<%=basePath%>images/frame/top_13.gif" width="26" height="37">&nbsp;</td>
			<td height="37" colspan="2" background="<%=basePath%>images/frame/top_14.gif">
				<div id="menuLevel">
					<level:level level="1"></level:level>
				</div></td>
			<td background="images/Top_16.gif" width="141" height="37">
			<img
				src="icon/Person.png" style=" margin-left:35px; margin-top:3px"
				title="用户信息" width="23" height="23" /> <span class="userinfo"
				title="<%=request.getSession().getAttribute("userdep") %>/<%=request.getSession().getAttribute("userrole") %>"><%=request.getSession().getAttribute("username")%></span>
			</td>
			<td height="37" colspan="2" background="<%=basePath%>images/frame/Top_17.gif">&nbsp;</td>
			<td width="200" height="37" background="<%=basePath%>images/frame/Top_17.gif">
			<MARQUEE style="width:80%;float: left;font-size:14px;color:#818181;" scrollamount='4' onmouseover=this.stop() onmouseout=this.start()>
				<!-- 添加滚动文字 -->
				<a class="linkstyle" onclick="callWarn('default/reportMessageAction_getReportMessage?state=0')"><%=request.getSession().getAttribute("remind")%></a>
				
			</MARQUEE> 
			<img src="<%=basePath%>images/frame/laba.png" style="margin-right:10px;float: left;" title="近期警告提示信息" width="20" height="20" />
			</td>
		</tr>
	</table>
		<%-- <div id="CenterAreaBg">
			<div id="Head1">
				<div id="Head1Right"></div>
			</div>
			<div id="Head2">
				<!--<c:if test="${hasFlag==false}">-->
					<div id="Head2_Awoke">
						<ul id="AwokeNum">
							<li><a href="<%=basePath%>flow/myTaskList" target="right">
									<img border="0" width="12" height="14"
									src="<%=basePath%>images/index/top/wait.gif" /> 待办事项（<span
									id="wait" class="taskListSize">1</span>）
							</a></li>

							<!-- 是否有待审批文档的提示2，提示审批 -->
							<li id="messageArea"><a href="javascript:void(0);"
								onclick="javascript:addTab('<%=basePath%>flow/myTaskList','待我审批')">您有
									1 个待审批文档，请及时审批！★★★★★</a></li>
						</ul>
					</div>
				<!--</c:if>-->
				<div id="Head1Right">
					<div id="Head1Right_UserName">
						<img border="0" width="13" height="14"
							src="<%=basePath%>images/index/top/user.gif" /> 您好，<b>${baseUser.userName}</b>
						&nbsp; <a style="color: #0082DC"
							href="<%=basePath%>user/logout.action" /><b>安全退出</b></a>
					</div>
				</div>
			</div>
		</div>
		<form id="changeForm"
			action="http://10.74.0.15:8080/kh/uums/usermanager/login.action?formAction=loginByNewSys"
			method="post">
			<input type="hidden" name="j_username" value="${baseUser.userName }" />
		</form> --%>
	</div>
	<div region="west" split="false" title="管理菜单"
		style="width: 170px; overflow: hidden;">
		<div class="easyui-accordion" fit="false" border="false"
			id="navigation" style="width: 170px;">
			<c:forEach items="${privileges}" var="one">
				<c:if test="${one.fmCategory==100 }">
					<div title="${one.fmName}">
						<ul style="" class="MenuLevel2">
							<c:forEach items="${privileges}" var="two">
								<c:if test="${one.fmId == two.fmCategory}">
									<li class="level2">
										<div class="level2Style">
											<a style="font: 14px" href="javascript:void(0);"
												onclick="javascript:addTab('<%=basePath %>${two.fmAction}','${two.fmName }')">${two.fmName }</a>
										</div>
									</li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<div region="center" split="false" title="" style="overflow: hidden;">
		<div class="easyui-tabs" fit="true" border="false" id="workTabs">
		</div>
	</div>
	<div align="center" region="south" split="false"
		style="overflow: hidden; height: 30px;">
		<div align="center" 
			title="Copyright© 2015-2016  中南电力设计院&nbsp;&nbsp;兼容IE8以上版本，最佳分辨率1400x900"
			headerCls="titleCenter" collapsible="false" border="false">Copyright© 2015-2016  中南电力设计院&nbsp;&nbsp;兼容IE8以上版本，最佳分辨率1400x900</div>
	</div>
</body>

<script type="text/javascript">
function addTab(href,title){
	var tabWidth=1400;
	var tabHeight=90;
    if($("#workTabs").tabs("exists",title)){
        $("#workTabs").tabs('select',title);
    }else{
        $("#workTabs").tabs("add",{
            title:title,
            content:'<iframe src="'+href+'" style="border:0px;overflow:auto;width:100%;height:100%;"  noresize="noresize"></iframe>',
            closable:true
        });
    } 
}
</script>
</html>