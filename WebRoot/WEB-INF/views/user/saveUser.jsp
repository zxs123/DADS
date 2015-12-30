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
<title>新建用户</title>
    <script language="javascript" src="<%= basePath %>js/common/jquery.js"></script>
    <script language="javascript" src="<%= basePath %>js/common/pageCommon.js" charset="utf-8"></script>
    <script language="javascript" src="<%= basePath %>js/common/PageUtils.js" charset="utf-8"></script>
    <script language="javascript" src="<%= basePath %>js/common/DemoData.js" charset="utf-8"></script>
	<script language="javascript" src="<%= basePath %>js/common/DataShowManager.js" charset="utf-8"></script>
    <script language="javascript" src="<%=basePath %>js/base-loading.js"></script>
    <link type="text/css" rel="stylesheet" href="<%= basePath %>css/common/pageCommon.css" />
<script type="text/javascript">
$(document).ready(function(){
			var result = '${result}';
			if("success" == result) {
				alert("添加成功");
				location.href = "<%=basePath%>manage/userList";
			} else if("error" == result) {
				alert("添加失败");
			}
			});
			
	function checkData() {
		var loginName = $.trim($("#loginName").val());	
		var repeatFlag = false;
		if(null == loginName || "" == loginName) {
			alert("请填写用户登录名");
			return false;
		}
		$.ajax({
		url : "<%=basePath %>manage/checkMessageRepeat",
		type : 'post',
		async : false,
		data : {
			loginName : loginName,
		},
		dataType : 'json',
		success : function(data) {
			if ("repeat" == data.result) {
				repeatFlag = true;
			}
		}
	});
	if (repeatFlag) {
		alert("对不起！该用户名已经注册！请重新输入!");
		 $("#loginName").focus();
		return false;
	}
	 var name = $.trim($("#name").val());
	if(null == name || "" == name) {
			alert("请填写姓名！");
			  $("#name").focus();   
			return false;
		}
	
	var phoneNumber = $.trim($("#phoneNumber").val());      
	if(!(""==phoneNumber || null == phoneNumber)){
	var isMobile=/^(?:13\d|15\d|18\d)\d{5}(\d{3}|\*{3})$/; //手机号码验证规则
	var isPhone=/^((0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;   //座机验证规则
	             //获得用户填写的号码值 赋值给变量dianhua
	if(! isMobile.test(phoneNumber) && !isPhone.test(phoneNumber)){ //如果用户输入的值不同时满足手机号和座机号的正则
    	alert("请正确填写电话号码，例如:13415764179或0321-4816048");  //就弹出提示信息
    	$("#phoneNumber").focus();       //输入框获得光标
    	return false;         //返回一个错误，不向下执行
	}
	}

	var roleIdArray=$("#roleIdArray").val();
	if(null == roleIdArray || "" == roleIdArray ||roleIdArray.length == 0 ){
		alert("请至少选择一个角色！！");
		 $("#roleIdArray").focus(); 
			return false;
	}
	
	}
</script>
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="<%= basePath %>images/common/title_arrow.gif"/> 新增用户
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>
    <form action="<%= basePath %>manage/addUser" method="post" onsubmit="return checkData()">
        <div class="ItemBlock_Title1"><!-- 信息说明 --><div class="ItemBlock_Title1">
        	<img border="0" width="4" height="7" src="<%= basePath %>images/common/item_point.gif" /> 用户信息 </div> 
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                    <tr><td width="100">所属部门</td>
                        <td><select class="SelectStyle" id="departmentId" name="departmentId">
                        		<!-- <option value="0" selected="selected">请选择部门</option> -->
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
                    <tr><td>登录名</td>
                        <td><input type="text" class="InputStyle" id="loginName" name="loginName"/> *
							（登录名要唯一）
						</td>
                    </tr>
                    <tr><td>姓名</td>
                        <td><input type="text" class="InputStyle" id="name" name="name"/> *</td>
                    </tr>
					<tr><td>性别</td>
                        <td><input type="radio" name="gender" value="男" id="male"/><label for="male">男</label>
							<input type="radio" name="gender" value="女" id="female"/><label for="female">女</label>
						</td>
                    </tr>
                      <tr>
                      <td width="100">职位</td>
                        <td><select class="SelectStyle" id="positionId" name="positionId">
                        	<option value="0">请选择职位</option>                      
              					<c:forEach items="${positions}" var="position">
                						<option value="${position.positionId}" 
               							<c:if test="${user.position.positionId == position.positionId}"> selected="selected"
               							</c:if>>${position.positionName }</option>		                        
                				</c:forEach>
              				
                            </select> 
                        </td>
                    </tr>
					<tr><td>联系电话</td>
                        <td><input type="text" id="phoneNumber" name="phoneNumber" class="InputStyle"/></td>
                    </tr>
                    <tr><td>固定电话</td>
                        <td><input type="text" id="basePhine" name="basePhone" class="InputStyle"/></td>
                    </tr>
                    <tr><td>传真</td>
                        <td><input type="text" id="FAX" name="FAX" class="InputStyle"/></td>
                    </tr>
                    <tr><td>E-mail</td>
                        <td><input type="text" id="email" name="email" class="InputStyle"/></td>
                    </tr>
                    <tr><td>备注</td>
                        <td><textarea id="description" name="description" class="TextareaStyle"></textarea></td>
                    </tr>
                </table>
            </div>
        </div>
        
		<div class="ItemBlock_Title1"><!-- 信息说明 --><div class="ItemBlock_Title1">
        	<img border="0" width="4" height="7" src="<%= basePath %>images/common/item_point.gif" /> 角色设置 </div> 
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                    <tr>
						<td width="100">角色</td>
                        <td><select id="roleIdArray" name="roleIdArray" multiple="true" size="10" class="SelectStyle">
                        		<c:forEach items="${roleList}" var="role">
                       				<option value="${role.id}">${role.name}</option>
                        		</c:forEach>
                            </select>
                            	按住Ctrl键可以多选或取消选择
                        </td>
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
	1，用户的登录名要唯一，在填写时要同时检测是否可用。<br />
	2，新建用户后，密码被初始化为"1234"。<br />
	3，密码在数据库中存储的是MD5摘要（不是存储明文密码）。<br />
	4，用户登录系统后可以使用“个人设置→修改密码”功能修改密码。<br />
	5，新建用户后，会自动指定默认的头像。用户可以使用“个人设置→个人信息”功能修改自已的头像<br />
	6，修改用户信息时，登录名不可修改。
</div>

</body>
</html>
