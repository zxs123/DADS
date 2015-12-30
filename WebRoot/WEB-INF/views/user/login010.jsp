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
<title>利润考核系统</title>
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/login/login.css" />
<script type="text/javascript" src="<%=basePath %>js/jquery-1.4.4.min.js"></script>
<script language="javascript" src="<%=basePath %>js/base-loading.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var result = '${result}';
	if("success" == result) {
		alert("添加成功");
		location.href = "<%=basePath%>manage/userList";
	} else if("error" == result) {
		alert("用户名或密码错误 ！ ");
	}
	});

$(function() {  
	// 重定向时跳出iframe
	if(window != top) {
		top.location.href = location.href;
	}	
	
	
	   $(document).ready(function(){
			$("#username").focus();
	   })
	   
	   document.onkeydown = function(e){    
		    var ev = document.all ? window.event : e;  
		    if(ev.keyCode==13) {
		    	$("#login_btn").click();
		    }  
		  }  
	
  $("#login_btn").click(function(){ 
		$("#searchForm").submit();
      <%-- $.post("<%=basePath %>manage/checklogin",
              {username:  $("#username").val(),
     	 	  userpass:  $("#userpass").val()
              },  
                 function(data){       
                     $.each(data,function(key,values) { 
                     	if (key == "err")
                     		alert(values);
                     	else if (key == "success")
                     	{    
                             location.href = "<%=basePath %>manage/main";
                     	}  
                   	});  

            });   --%>
  });  
  
}); 
</script>
</head>
<body  class="PageBody"  >
<form id="searchForm" action="<%=basePath %>manage/main" method="post">
    <div id="CenterAreaBg">
        <div id="CenterArea">
            <div id="LogoImg"><img border="0" src="<%=basePath %>images/login/logo.png" /></div>
            <div id="LoginInfo">
                <table border="0" cellspacing="0" cellpadding="0" width=100%>
                    <tr>
                        <td width=45 class="Subject"><img border="0" src="<%=basePath %>images/login/userId.gif" /></td>
                        <td><input size="20"  id="username" class="TextField" tabindex="1" type="text" name="username" /></td>
                        <td rowspan="2" style="padding-left:10px;"><input type="image" tabindex="3" id="login_btn" src="<%=basePath %>images/login/userLogin_button.gif"/></td>
                    </tr>
                    <tr>
                        <td class="Subject"><img border="0" src="<%=basePath %>images/login/password.gif" /></td>
                        <td><input size="20" class="TextField" type="password" tabindex="2" id="userpass"  name="userpass" /></td>
                    </tr>
                </table>
            </div>
            <div id="CopyRight"><a href="javascript:void(0)">&copy; 光大银行</a></div>
        </div>
    </div>
</form>
</body>

</html>