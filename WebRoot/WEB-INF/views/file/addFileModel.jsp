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
    
    <script language="javascript" src="<%= basePath %>js/common/iOnt47/iOnt-mymin.js"></script>
   <link type="text/css" rel="stylesheet" href="<%= basePath %>css/common/style.css" />
<script type="text/javascript">
$(document).ready(function(){
			var result = '${result}';
			if("success" == result) {
				alert("添加成功");
				location.href = "<%=basePath%>file/fileList";
			} else if("error" == result) {
				alert("添加失败");
			}
			
			var editor = KindEditor.create('textarea[name="detail"]', {
				uploadJson : '<%=basePath%>file/upload_file/file',
				width : '100%',
				height : '300',
				items: [
					'undo', 'redo', '|', 'justifyleft', 'justifycenter', 'justifyright',
					'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
					'superscript', '|',
					'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
					'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|',
					'image',
					'table', 'hr', 'emoticons','|', 'clearhtml', 'selectall',  'fullscreen',
				],
				allowFlashUpload : false,
				allowMediaUpload : false,
				allowFileUpload : true,
			});
		});

KindEditor.ready(function(K) {
	var uploadeditor = K.editor({
		uploadJson : '<%=basePath%>file/upload_file/file',
		allowFileManager : true
	});

	K('#image3').click(function() {
		uploadeditor.loadPlugin('image', function() {
			uploadeditor.plugin.imageDialog({
				showRemote : false,
				clickFn : function(url, title, width, height, border, align) {
					$("#wjtp ul").empty();
					$("#wjtp ul").append("<li><input type=hidden id='fileName' name='fileName' value='" + title +"'/><input type=hidden id='fileUrl' name='fileUrl' value='" + url +"'/></li>");
					uploadeditor.hideDialog();
					$("#searchForm").submit(); 
				}
			});
		});
	});
});		

</script>
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="<%= basePath %>images/common/title_arrow.gif"/> 新增文档模板
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<form id="searchForm" method="post" action="<%= basePath %>file/addFileModel">
				
<!--显示表单内容-->
<div id=MainArea>
        <div class="ItemBlock_Title1"><!-- 信息说明<DIV CLASS="ItemBlock_Title1">
            <IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="../style/blue/images/item_point.gif" /> 个人信息 </DIV>  -->
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                    <tr>                      
                    	<span class="sub_ip" style="width:360px;">
                    	<input type="button" id="image3"  class="text_an" value="上传文档" style="width:80px;height:30px;" />
                    	</span>
								<div id="wjtp" class="sublh_2tb"  style="margin-top:20px;">
									<ul></ul>
									<div class="clearfix"></div>
								</div>
                    </tr>
                </table>
            </div>
        </div>
  <div style="display:none">
					<div>
						<ul>
							<li><textarea id="detail" name="detail" cols="" rows=""></textarea></li>
						</ul>
					</div>
				</div>
        <!-- 表单操作 -->
   
</div>
 </form> 
</body>
</html>
