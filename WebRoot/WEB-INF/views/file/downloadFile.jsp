<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript" src="<%=basePath%>js/common/jquery.js"></script>
<script language="javascript" src="<%=basePath%>js/common/pageCommon.js" charset="utf-8"></script>
<script language="javascript" src="<%=basePath %>js/base-loading.js"></script>

<link type="text/css" rel="stylesheet" href="<%=basePath%>css/common/pageCommon.css" />
<script type="text/javascript">
function test(fileUrl,fileName){
	
	location.href = "<%=basePath %>file/downloadFileModel?fileUrl=" + fileUrl+"&fileName="+fileName;
	
}

</script>
</head>
<body>


        <br/>
       
        <br/>
        <div class="ItemBlockBorder">
			<div class="ItemBlock">
				<table cellpadding="0" cellspacing="0" class="mainForm">
				<c:forEach items="${fileList }" var="filelist" varStatus="vs">
				<tr style="height: 40px">
					<td>附件${vs.index+1 }：</td>
					<td><a href="#" onclick="javascript:test('${filelist.fileUrl}','${filelist.fileName}')">${filelist.fileName}</a></td>
				</tr>
				</c:forEach>
				</table>
			</div>
		</div>
 <div class="Description">
    说明：<br />
    &nbsp;&nbsp;&nbsp;&nbsp;  常用文档模板下载：点击文档即可下载<br/>
</div> 
</body>
</html>