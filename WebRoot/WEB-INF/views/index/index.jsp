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
<title>后台首页</title>

  <link rel="stylesheet" type="text/css" href="<%= basePath %>jquery-easyui-1.3.6/themes/gray/easyui.css"/>
  <link rel="stylesheet" type="text/css" href="<%= basePath %>jquery-easyui-1.3.6/themes/icon.css"/>
 <script type="text/javascript" src="<%= basePath %>jquery-easyui-1.3.6/jquery-1.7.1.min.js"></script> 
  <script type="text/javascript" src="<%= basePath %>jquery-easyui-1.3.6/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="<%= basePath %>jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=basePath %>js/base-loading.js"></script>
<link type="text/css" rel="stylesheet" href="<%= basePath %>css/index/top.css" />
<script  type="text/javascript">
<%-- $(document).ready(function(){
	addTab('<%=basePath %>yjkh/yjkhgmBmhz/2','规模部门业绩汇总')	
	}); --%>
//登陆操作
 function changeOld(){ 
		$("#changeForm").submit();
}
</script>
</head>

 <body class="easyui-layout">
					 
        <div id="header" region="north" split="false"  border="false" style="  height: 100px;  overflow: hidden; ">
   					 <div id="CenterAreaBg">
						<div id="Head1">	
							<div id="Head1Right">
							</div> 
						</div>
					    <div id="Head2">
					    	<c:if test="${hasFlag==1 }">
					        <div id="Head2_Awoke">
					            <ul id="AwokeNum">
					                <li><a href="<%= basePath %>flow/myTaskList" target="right">
					                		<img border="0" width="12" height="14" src="<%= basePath %>images/index/top/wait.gif" /> 
					                		待办事项（<span id="wait" class="taskListSize">${flowCount}</span>）
					                	</a>
					                </li>
									  
					                <!-- 是否有待审批文档的提示2，提示审批 -->
					                <li id="messageArea">
					                 <a href="javascript:void(0);" onclick="javascript:addTab('<%=basePath %>flow/myTaskList','待我审批')">您有  ${flowCount} 个待审批文档，请及时审批！★★★★★</a>
					                </li>
					            </ul>
					        </div>
					        </c:if>
					        <div id="Head1Right">
					        		<div id="Head1Right_UserName">
					                <img border="0" width="13" height="14" src="<%= basePath %>images/index/top/user.gif" /> 您好，<b>${baseUser.userName}</b>
									 &nbsp; <a style="color: #b3e1ff" href="<%= basePath %>manage/logout"/><b>安全退出</b></a>
									 </div>
								</div>
							</div>
						</div>
						<form id="changeForm" action="http://10.74.0.15:8080/kh/uums/usermanager/login.action?formAction=loginByNewSys" method="post">
					             	 <input type="hidden"  name="j_username" value="${baseUser.userName }"/>
					    </form>
					</div>
        </div>
        <div region="west" split="false"  title="管理菜单" style="  width:170px;overflow:hidden;">
            <div class="easyui-accordion" fit="false" border="false" id="navigation" style="width:170px;">
                <c:forEach items="${privileges}" var="one">
				<c:if test="${one.fmCategory==100 }">
				 <div title="${one.fmName}">
				 <ul style="" class="MenuLevel2">              
		            <c:forEach items="${privileges}" var="two">
						<c:if test="${one.fmId == two.fmCategory}">
               				 <li  class="level2">
               				 <div class="level2Style">
               				 	<a style="font: 14px" href="javascript:void(0);" onclick="javascript:addTab('<%=basePath %>${two.fmAction}','${two.fmName }')">${two.fmName }</a>
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
        <div region="center" split="false" title=""  style="overflow: hidden;" >
            <div class="easyui-tabs" fit="true" border="false" id="workTabs">
            </div>
        </div>
        <div  region="south" split="false"  style="overflow: hidden;height:30px;">
            <div class="easyui-panel" title="Copyright© 2014-2015  中国光大银行贵阳分行&nbsp;兼容IE8以上版本，最佳分辨率1400x900" headerCls="titleCenter" collapsible="false" border="false"></div>
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
</body>

</html>