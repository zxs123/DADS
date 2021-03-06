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
<title>导航菜单</title>
<script language="javascript" src="<%=basePath %>js/base-loading.js"></script>
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
        // 选择所有
        function selectAll(checkedValue){
            $("input[type=checkbox][name=resourceIdList]").attr("checked", checkedValue);
        }
        
        function doChecked( liID, checkedValue ){
            // 当前点击的checkbox元素所在的li元素
            var jLi = $("#" + liID);

            // 选中所有的直属下级。（children()方法是筛选下一级，find()是筛选所有后代）
            jLi.children("ul").find("input[type=checkbox]").attr("checked", checkedValue);
            
            // 选中或取消选中直属上级
            if( checkedValue ){ // checkedValue是boolean型，表示是否选中了当前复选框
                // 如果当前是选中，则选中所有的直属上级
                jLi.parents("li").children("input[type=checkbox]").attr("checked", checkedValue);
            }else{
                // 如果当前是取消选中，并且同级中没有被选中的项，则也取消上级的选中状态
                var jCheckedSibingCB = jLi.siblings("li").children("input[type=checkbox]:checked");
                if(jCheckedSibingCB.size() == 0){
                    var jCheckboxInput = jLi.parent("ul").prev("label").prev("input[type=checkbox]");
                    jCheckboxInput.attr("checked", checkedValue);
                    
                    // 递归操作每一层直属上级
                    var jParentLi = jCheckboxInput.parent("li");
                    if(jParentLi.size() > 0){
                        doChecked(jParentLi.attr("id"), checkedValue);
                    }
                }
            }
        } 
        
        $(function(){
            $("#tree").treeview({
            	persist:"location",
            	collapsed:true,
            	unique:false
            });
        });
    </script>
</head>
<body style="overflow-x: hidden;">

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="<%= basePath %>images/common/title_arrow.gif"/> 配置权限
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>
    <form action="<%=basePath%>manage/setPrivilege" method="post">
    	<input type="hidden" name="roleID" id="roleID" value="${roleID}"/>
        <div class="ItemBlock_Title1"><!-- 信息说明 --><div class="ItemBlock_Title1">
            <img border="0" width="4" height="7" src="<%= basePath %>images/common/item_point.gif" /> 正在为【${nowRole.name }】配置权限 </div> 
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                    <!--表头-->
                  <thead>
						<tr align="left" valign="middle" id="TableTitle">
							<td width="300px" style="padding-left: 7px;">
								<!-- 如果把全选元素的id指定为selectAll，并且有函数selectAll()，就会有错。因为有一种用法：可以直接用id引用元素 -->
								<input type="checkbox" id="cbSelectAll" onClick="selectAll(this.checked)"/>
								<label for="cbSelectAll">全选</label>
							</td>
						</tr>
					</thead>
                   
                    <!--显示数据列表-->
                    <tbody id="TableData">
                        <tr class="TableDetail1">
                            <!-- 显示权限树 -->
                            <td>
<ul id='tree'>
   <c:forEach items="${privileges }" var="one">
		<c:if test="${empty  one.parent.id }">
			<li id='li_${one.id }'>
				<input type='checkbox' name='resourceIdList' id='cb_${one.id }' value="${one.id }" onclick='doChecked("li_${one.id }", this.checked)' 
					<c:forEach items="${nowPrivileges}" var="nowPrivilege">
						<c:if test="${one.id == nowPrivilege.id}">checked='checked'</c:if>
					</c:forEach> /> 	
				<label for='cb_${one.id }'><spanclass='folder' id='${one.id }'>${one.name}</span> </label>
				<ul>
					<c:forEach items="${privileges }" var="two">
						<c:if test="${one.id == two.parent.id}">
							<li id='li_${two.id }'>
							<input type='checkbox' name='resourceIdList' id='cb_${two.id }' value="${two.id }"  onclick='doChecked("li_${two.id }", this.checked)' 
								<c:forEach items="${nowPrivileges}" var="nowPrivilege">
									<c:if test="${two.id == nowPrivilege.id}">checked='checked'</c:if>
								</c:forEach> /> 
							 <label for='cb_${two.id }'><span class='folder' id='${two.id }'>${two.name }</span> </label>
								<ul>
									<c:forEach items="${privileges }" var="three">
										<c:if test="${two.id == three.parent.id }">
											<li id='li_${three.id }'>
											<input type='checkbox'	name='resourceIdList' id='cb_${three.id }' value="${three.id }" onclick='doChecked("li_${three.id }", this.checked)' 
												<c:forEach items="${nowPrivileges}" var="nowPrivilege">
													<c:if test="${three.id == nowPrivilege.id}">checked='checked'</c:if>
												</c:forEach> /> 
											<label for='cb_${three.id }'><span class='folder' id='${three.id }'>${three.name }</span> </label>
											</li>
										</c:if>
									</c:forEach>
								</ul>
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
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <input type="image" src="<%= basePath %>images/common/save.png"/>
            <a href="javascript:history.go(-1);"><img src="<%= basePath %>images/common/goBack.png"/></a>
        </div>
    </form>
</div>

<div class="Description">
    说明：<br />
    1，选中一个权限时：<br />
    &nbsp;&nbsp;&nbsp;&nbsp; a，应该选中 他的所有直系上级。<br />
    &nbsp;&nbsp;&nbsp;&nbsp; b，应该选中他的所有直系下级。<br />
    2，取消选择一个权限时：<br />
    &nbsp;&nbsp;&nbsp;&nbsp; a，应该取消选择 他的所有直系下级。<br />
    &nbsp;&nbsp;&nbsp;&nbsp; b，如果同级的权限都是未选择状态，就应该取消选中他的直接上级，并递归向上做这个操作。<br />

    3，全选/取消全选。<br />
    4，默认选中当前角色已有的权限。<br />
</div>

</body>
</html>