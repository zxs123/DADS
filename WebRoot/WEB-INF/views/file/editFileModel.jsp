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
    <link type="text/css" rel="stylesheet" href="<%= basePath %>css/common/pageCommon.css" />
    
<link type="text/css" rel="stylesheet" href="<%= basePath %>css/privilege/file.css" />
<link type="text/css" rel="stylesheet" href="<%= basePath %>css/privilege/jquery.treeview.css" />
<script language="javascript" src="<%= basePath %>js/privilege/jquery.treeview.js" charset="utf-8"></script>

<script type="text/javascript">
    
	$(document).ready(function(){
		var result = '${result}';
		if("success" == result) {
			alert("修改成功");
			location.href = "<%=basePath %>manage/userList";
		} else if("error" == result) {
			alert("修改失败");
		}
		})

        // 选择所有
        function selectAll(checkedValue){
            $("input[type=checkbox][name=resourceIdList]").attr("checked", checkedValue);
        }
        
        function doChecked( liID, checkedValue ){
            // 当前点击的checkbox元素所在的li元素
            var jLi = $("#" + liID);

            // 选中所有的直属下级。（children()方法是筛选下一级，find()是筛选所有后代）
            jLi.children("ul").find("input[type=checkbox]").attr("checked", checkedValue);
            
        } 
        
        $(function(){
            $("#tree").treeview();
        });
</script>
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="<%= basePath %>images/common/title_arrow.gif"/> 修改用户信息
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>
    <form action="<%= basePath %>manage/editUser" method="post">
    <input type="hidden" name="id" value="${user.id}"/>
        <div class="ItemBlock_Title1"><!-- 信息说明 --><div class="ItemBlock_Title1">
        	<img border="0" width="4" height="7" src="<%= basePath %>images/common/item_point.gif" /> 用户信息 </div> 
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                    <tr><td width="100">所属部门</td>
                        <td><select class="SelectStyle" id="departmentId" name="departmentId">
                        		<c:forEach items="${departmentList}" var="parentDepartment">
                        		<c:if test="${parentDepartment.parent.id == 1 and parentDepartment.id != 1}">
                        				<option value="${parentDepartment.id}" 
                       					<c:if test="${user.department.id == parentDepartment.id}">
                       						selected="selected"
                       					</c:if>>┠${parentDepartment.name}</option>
                        				<c:forEach items="${departmentList}" var="childDepartment">
                        					<c:if test="${childDepartment.parent.id == parentDepartment.id}">
                        						<option value="${childDepartment.id}" 
                       							<c:if test="${user.department.id == childDepartment.id}">
                       								selected="selected"
                       							</c:if>>　┠${childDepartment.name}</option>
                        						<c:forEach items="${departmentList}" var="grandchildDepartment">
		                        					<c:if test="${grandchildDepartment.parent.id == childDepartment.id}">
		                        						<option value="${grandchildDepartment.id}" 
		                       							<c:if test="${user.department.id == grandchildDepartment.id}">
		                       								selected="selected"
		                       							</c:if>>　　┠${grandchildDepartment.name}</option>
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
                        <td><input type="text" class="InputStyle" id="loginName" name="loginName" value="${user.loginName }"/> *
							（登录名要唯一）
						</td>
                    </tr>
                    <tr><td>姓名</td>
                        <td><input type="text" class="InputStyle" id="name" name="name" value="${user.name}"/> *</td>
                    </tr>
					<tr><td>性别</td>
                        <td>
							<input type="radio" name="gender" value="男" id="male" <c:if test="${user.gender eq '男'}">checked</c:if>/><label for="male">男</label>
                        	<input type="radio" name="gender" value="女" id="female" <c:if test="${user.gender eq '女'}">checked</c:if>/><label for="female">女</label>
						</td>
                    </tr>
                     <tr><td width="100">职位</td>
                        <td><select class="SelectStyle" id="positionId" name="positionId">
                                <option value="" >请选择职位</option>
                        						<c:forEach items="${positions}" var="position">
		                        						<option value="${position.positionId}" 
		                       							<c:if test="${user.position.positionId == position.positionId}"> selected="selected"
		                       							</c:if>>${position.positionName }</option>		                        
		                        				</c:forEach>
                        				
                            </select> 
                        </td>
                  

					<tr><td>联系电话</td>
                        <td><input type="text" id="phoneNumber" name="phoneNumber" class="InputStyle" value="${user.phoneNumber}"/></td>
                    </tr>
                    <tr><td>E-mail</td>
                        <td><input type="text" id="email" name="email" class="InputStyle" value="${user.email}"/></td>
                    </tr>
                    <tr><td>备注</td>
                        <td><textarea id="description" name="description" class="TextareaStyle" >${user.description}</textarea></td>
                    </tr>
                </table>
            </div>
        </div>

      <br />
                 	    附属部门设置
                    <div class="ItemBlockBorder">
						<div class="ItemBlock">
                    	<table cellpadding="0" cellspacing="0" class="mainForm">
						<!--表头-->
						<thead>
							<tr align="left" valign="middle" id="TableTitle">
								<td width="300px" style="padding-left: 7px;">
									<!-- 如果把全选元素的id指定为selectAll，并且有函数selectAll()，就会有错。因为有一种用法：可以直接用id引用元素 -->
									<input type="checkbox" id="cbSelectAll"
									onClick="selectAll(this.checked)" /> <label for="cbSelectAll">全选</label>
								</td>
							</tr>
						</thead>
                    							<!--显示数据列表-->
						<tbody id="TableData">
							<tr class="TableDetail1">
								<!-- 显示权限树 -->
								<td>
									<ul id='tree'>
										<c:forEach items="${departments}" var="one">
										<c:if test="${one.parent.id == 1 and one.id!=1 }">
											<li id='li_${one.id }'>
											<input type='checkbox' name='resourceIdList' id='cb_${one.id }' value="${one.id }" onclick='doChecked("li_${one.id }", this.checked)'
												<c:forEach items="${nowDepartments}" var="nowDepartments">
													<c:if test="${one.id == nowDepartments.id}">checked='checked'</c:if>
													</c:forEach> />
												<label for='cb_${one.id }'>
													
													<span class='userFolder' id='${one.id }'>${one.name}</span>
												 </label>
												 <ul>
												<c:forEach items="${departments}" var="child">
												<c:if test="${child.parent.id == one.id}">
												<li id='li_${child.id }'>
												<input type='checkbox' name='resourceIdList' id='cb_${child.id }' value="${child.id }" onclick='doChecked("li_${child.id }", this.checked)'
												<c:forEach items="${nowDepartments}" var="nowDepartments">
													<c:if test="${child.id == nowDepartments.id}">checked='checked'</c:if>
													</c:forEach>
												 />
												 <label for='cb_${child.id }'><span class='userFolder' id='${child.id }'>${child.name}</span> </label>
												</li>
												</c:if>
												</c:forEach>
												</ul>
											</li> 
									</c:if>
									</c:forEach>
									</ul>
								</td>
							</tr>
						</tbody>
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
                       				<option value="${role.id}" 
                       				<c:forEach items="${user.roles}" var="userRole">
	                       				<c:if test="${role.id == userRole.id}">
	                       					selected="selected"
	                       				</c:if>
                       				</c:forEach>>
                       					${role.name}
                       				</option>
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
