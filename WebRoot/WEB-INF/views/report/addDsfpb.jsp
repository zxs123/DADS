<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>对公分配表</title>
<script language="javascript" src="<%=basePath %>js/base-loading.js"></script>
<script language="javascript" src="<%=basePath%>js/common/jquery.js"></script>
<script language="javascript" src="<%=basePath%>js/common/pageCommon.js" charset="utf-8"></script>
<script language="javascript" src="<%=basePath%>js/common/PageUtils.js" charset="utf-8"></script>
<script language="javascript" src="<%=basePath%>js/common/DemoData.js" charset="utf-8"></script>
<%-- <script language="javascript" src="<%=basePath%>js/report/CkeckData.js" charset="utf-8"></script> --%>
<link type="text/css" rel="stylesheet"
	href="<%=basePath%>css/common/pageCommon.css" />
<%-- <link type="text/css" rel="stylesheet" href="<%= basePath %>css/common/style.css" /> --%>
<script type="text/javascript">
$(document).ready(function(){
		var result = '${result}';
		if("success" == result) {
			alert("数据提交成功！");	
			location.href = "<%=basePath %>report/initAddDsfpb";
			
		} else if ("error" == result) {
			alert("提交失败，请查看处理结果!");
		}				
	});



function applyFlow(){
	$("#applyFlow").show();		
}	
var rowCount=10;

function addData(){	
	rowCount++;
	
	var newRow="<tr align='center' valign='middle' id='rowData"+rowCount+"'>"
	+"<td>认领员工号</td><td><input type='text'  id='loginName"+rowCount+"' name='loginName' value='' onblur='getygname("+rowCount+")'/></td>"
	+"<td>认领员工姓名</td><td><input type='text'  id='name"+rowCount+"' name='name' value=''/></td>"
	+"<td>占比</td><td><input type='text'  id='QUANZH"+rowCount+"' name='QUANZH' value=''/></td>"
	+"<td><a href='#' onclick='del("+rowCount+")'>删除</a>"		
	+"<td></td></tr>"
	$("#fpbdata").append(newRow)
}

function delRow(rowIndex){
	var option="option"+rowIndex
	//删除输入行
	$("#"+option).remove();
	
	$("#inputFp"+rowIndex).remove();
	$("#xsFp"+rowIndex).remove();
	
}

function getygname(id){	
	var type=4
	$("#name"+id).val("")
	var loginName=$.trim($("#loginName"+id).val())
	if(null == loginName || "" == loginName) {
		return false;
	}
	var Flag = false;
	$.ajax({
		url : "<%=basePath %>report/getName",
		type : 'post',
		async : false,
		data : {
			keywords : loginName,
			type   : type
		},
		dataType : 'json',
		success : function(data) {
			if ("error" == data.result) {
				Flag = true;
			}else{
				$("#name"+id).val(data.result)
			}
		}
	});
	if (Flag) {
	//	alert("对不起！该员工不存在!请重新输入");
	//	 $("#loginName"+id).focus();
		return false;
	}
}
function getKhname(){
	$("#khname").val("")
	var KHZHLX=$.trim($("#KHZHLX").val())
	var FLDM=$.trim($("#FLDM").val())
	if($("#KHZHLX").val()=="客户号"){
		type=6;
	}
	if($("#KHZHLX").val()=="账号"){
		type=5;
	}
	var ZHANGH=$.trim($("#ZHANGH").val())
	
	if(null == ZHANGH || "" == ZHANGH) {
		return false;
	}
	var Flag = false;
	$.ajax({
		url : "<%=basePath %>report/getName",
		type : 'post',
		async : false,
		data : {
			keywords : ZHANGH,
			type   : type,
			FLDM   :FLDM
		},
		dataType : 'json',
		success : function(data) {
			if ("error" == data.result) {
				Flag = true;
			}else{
				$("#khname").val(data.result)
			}
		}
	});
	if (Flag) {	
		
		 alert("对不起！无法获取对应账户/客户信息，请重新输入！");
		 $("#ZHANGH").focus();
		return false;
	}
}



function del(id){
	$("#rowData"+id).remove();
}

function edit(id){
	
	//$("input").removeAttr("readonly")
	$("#loginName"+id).attr("readonly",false)
	$("#QUANZH"+id).attr("readonly",false)
}

function checkData(){
	var ZHANGH=$.trim($("#ZHANGH").val());	
	if(null==ZHANGH || ""==$.trim(ZHANGH)){
		alert("请填写客户号/账号 ！");
		return false;
	}
	
	var khname=$.trim($("#khname").val());	
	if(null==khname || ""==$.trim(khname)){
		alert("获取客户名称失败 ！");
		return false;
	}	
	
	var flag=0;
	var loginName=document.getElementsByName("loginName");
	for(var i=0;i<loginName.length;i++){	
		if(null==$.trim(loginName[i].value) || ""==$.trim($.trim(loginName[i].value))){
				flag=1;
			}
	}  
	if(flag==1){
		alert("员工号不能为空 !")
		return false;
	}
		
	
	var name=document.getElementsByName("name");
	for(var i=0;i<name.length;i++){	
		if(null==$.trim(name[i].value) || ""==$.trim($.trim(name[i].value))){
				flag=1;
			}
	}  
	if(flag==1){
		alert("员工姓名获取失败，请检查员工号是否正确 !");
		return false;
	}
		
	var QUANZH=document.getElementsByName("QUANZH");
	for(var i=0;i<QUANZH.length;i++){	
		if(null==$.trim(QUANZH[i].value) || ""==$.trim($.trim(QUANZH[i].value))){
				flag=1;
			}
	}  
	if(flag==1){
		alert("请填写权重!");
		return false;
	}
	
	if(confirm("确定要提交吗?")) {
		$("#searchForm").submit();
	}
}

</script>
</head>
<body>

	<!-- 标题显示 -->
	<div id="Title_bar">
		<div id="Title_bar_Head">
			<div id="Title_Head"></div>
			<div id="Title">
				<!--页面标题-->
				<img border="0" width="13" height="13"
					src="<%=basePath%>images/common/title_arrow.gif" /> 新增对私分配
			</div>
			<div id="Title_End"></div>
		</div>
	</div>

	<form id="searchForm" method="post" action="<%=basePath%>report/addDsfpb" >
			<input type="hidden" name="flowFlag" value="${flag}"></input>
			<input type="hidden" name="flowId" value="${flowId}"></input>
			<input type="hidden" name="dgType" id="dgType" value="add"></input>
	
		<div class="ItemBlockBorder">
			<div class="ItemBlock">
				<table cellpadding="0" cellspacing="0" class="mainForm">
				<tr>
					<td style="width: 200px">申请流水编号:</td>
					<td>${flowId }</td>
					<td></td>
				</tr>
				</table>
			</div>
		</div>
		<br />
		<div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                	<c:if test="${flag==0 }">
					<tr>
						<td width="100">类别:</td>
						<td><select class="RpSelectStyle" id="FLDM" name="FLDM">
								<option value="DSCK" selected="selected">对私存款</option>
								<option value="DSDK">对私贷款</option>
						</select><font color="red"> * </font></td>

					</tr>
					<tr>
						<td width="100">客户号/账号:</td>
						<td><select class="RpSelectStyle" id="KHZHLX" name="KHZHLX">
								<option value="客户号" selected="selected">客户号</option>
								<option value="账号">账号</option>
						</select><font color="red"> * </font></td>

					</tr>
					<tr>
						<td>客户号/客户账号:</td>
						<td><input type="text" class="" id="ZHANGH" name="ZHANGH" onblur="getKhname()" /><font color="red"> * </font></td>

					</tr>
					<tr>
						<td>客户姓名:</td>
						<td><input type="text" class="" id="khname" readonly="readonly" value="" name="khname" /><font
							color="red"> * </font></td>
					</tr>
					</c:if>
					<c:if test="${flag==1 }">
					<tr>
						<td width="100">类别:</td>
						<td><select class="RpSelectStyle" id="FLDM" name="FLDM">
								<option value="DSCK" <c:if test="${FLDM == 'DGSK' }"> selected='selected'</c:if> >对私存款</option>
								<option value="DSDK" <c:if test="${FLDM == 'DSDK' }"> selected='selected'</c:if> >对私贷款</option>
						</select><font color="red"> * </font></td>
					</tr>
					<tr>
						<td width="100">客户号/卡号:</td>
						<td><select class="RpSelectStyle" id="KHZHLX" name="KHZHLX">
								<option value="客户号" <c:if test="${KHZHLX == '客户号' }">  selected="selected" </c:if>>客户号</option>
								<option value="账号" <c:if test="${KHZHLX == '账号' }"> selected="selected" </c:if>>账号</option>
						</select><font color="red"> * </font></td>

					</tr>
					<tr>
						<td>客户号/客户账号:</td>
						<td><input type="text" class="" id="ZHANGH" name="ZHANGH" value="${ZHANGH }" onblur="getKhname()" /><font color="red"> * </font></td>

					</tr>
					<tr>
						<td>客户姓名:</td>
						<td><input type="text" class="" id="khname" readonly="readonly" value="${khname }" name="khname" /><font
							color="red"> * </font></td>
					</tr>
					</c:if>
				</table>
            </div>
        </div>
        <br />
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm" id="fpbdata">
                     
                     <c:if test="${ flag == 0 }">         
	           			<tr align="center" valign="middle" id="rowData0">	     		    
	         			<td>认领员工号</td><td><input type="text"  id="loginName0" name="loginName" value="" onblur="getygname(0)"/></td>
	           			<td>认领员工姓名</td><td><input type="text"   id="name0" name="name" value=""/></td>
	           			<td>占比</td><td><input type="text"   id="QUANZH0" name="QUANZH" value=""/></td>
	           			<td>
	           			<a href="#" onclick="del(0)">删除</a>
	           			</td>
	           			<td></td>        
	           			</tr>
	           		</c:if> 
	           		<c:if test="${flag==1}">
	           			<c:forEach items="${resultList}" var="resultlist" varStatus="vs">
	            			<tr align="center" valign="middle" id="rowData${vs.index}">	     		    
	            			<td>认领员工号</td><td><input type="text"  id="loginName${vs.index}" name="loginName" value="${resultlist.loginName}" onblur="getygname(${vs.index})"/></td>
	           				<td>认领员工姓名</td><td><input type="text"   id="name${vs.index}" name="name" value="${resultlist.name}"/></td>
	           				<td>占比</td><td><input type="text"   id="QUANZH${vs.index}" name="QUANZH" value="${resultlist.QUANZH}"/></td>	         	
	            	  		<td>
	            			<a href="#" onclick="del(${vs.index})">删除</a>	           
	            			</td>
	            			<td><font color="red">${resultlist.status}</font></td>
	            			</tr>
            			</c:forEach>           
	           		</c:if>
            		      
                </table>
                <div>
					<input type="button" onclick="addData()" value="增加分配人" />
				</div>
            </div>
        </div>
        <br />
		
		<center><input type="button" id="search_btn"  value="提交" class="text_an3"  onclick="checkData()" /></center>
	</form>
</body>
</html>
