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
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>月报查询</title>
<link rel="stylesheet" type="text/css"
	href="../jquery-easyui-1.4.4/themes/gray/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="../jquery-easyui-1.4.4/themes/icon.css" />
<script type="text/javascript"
	src="../jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="../jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="../jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="../js/base-loading.js"></script>

<script type="text/javascript">
    jQuery(function($){
		$('#monthTable').datagrid({
			title:'月报数据', 
			method:'post',
			iconCls:'icon-large-chart',
			singleSelect:false, 
			fitColumns: true, 
			striped: true, 
			collapsible:true,
			url:"<%=basePath%>dataQuery/queryMonthReportList.action",
			sortName: 'pDate', 
			sortOrder: 'desc',
			remoteSort: true, 
			idField:'pId', 
			queryParams:{}, 
			pagination:true, 
			rownumbers:true, 
			columns:[[
				{field:'pName',title:'项目名称',width:20,sortable:true,
					formatter:function(value,row,index){return row.pName;} 
				},
				{field:'pType',title:'工程类别',width:20,sortable:true,
					formatter:function(value,row,index){return row.userId;}
				},
				{field:'depName',title:'所属部门',width:30,sortable:true,
					formatter:function(value,row,index){
						return row.depName;  //该列的值是deptId，显示的是deptName
					}
				},
				{field:'pOwnername',title : '业主名称',width:100,align:'center',
					formatter : function(value, row, index) { return row.pOwnername;}
				}, 
				{field : 'pConstruction',title : '建设性质',width : 100,align : 'center',
					formatter : function(value, row, index) {
						return row.pConstruction;
					}
				},
				{field : 'pLocation',title : '建设地点',width : 100,align : 'center',
					formatter : function(value, row, index) {
						return row.pLocation;
					}
				},
				{field : 'pOpentime',title : '开标时间',width : 100,align : 'center',
					formatter : function(value, row, index) {
						return row.pOpentime;
					}
				}, 
				{field : 'pBmanager',title : '商务经理',width : 100,align : 'center',
					formatter : function(value, row, index) {
						return row.pBmanager;
					}
				}, 
				{field : 'pPmanager',title : '项目经理',width : 100,align : 'center',
					formatter : function(value, row, index) {
						return row.pPmanager;
					}
				}, 
				{field : 'pDepid',title : '负责部门',width : 100,align : 'center',
					formatter : function(value, row, index) {
						return row.pDepid;
					}
				},
				{field : 'pDate',title : '录入日期',width : 100,align : 'center',
					formatter : function(value, row, index) {
						return row.pDate;
					}
				}, 
				{field : 'pSign',title : '投标计划',width : 100,align : 'center',
					formatter : function(value, row, index) {
						if (value == 1)
							return "是";
						else
							return "否";
					}
				}, 
				{field : 'pDesign',title : '设计阶段',width : 100,align : 'center',
					formatter : function(value, row, index) {
						return row.pDesign;
					}
				}
			]],
			onLoadSuccess:function(){
				$('#monthTable').datagrid('clearSelections'); //一定要加上这一句，要不然datagrid会记住之前的选择状态，删除时会出问题
			}
		});
    	
		//下拉表格初始化，这个东西在ajax下要尽量少用，太变态了，每加载一次就会重新创建一次，隐藏在页面上，
		//时间一长效率很低，用firebug一看页面上有几十个同样的层保存着下拉框中的内容，只有整个页面全部刷新才清除。
		//不知道新版本修正了没有，我目前的做法是点击菜单的时候手动清除一下。
		<%-- $('#deptCombo').combogrid({
			idField:'depId', //ID字段
		    textField:'depName', //显示的字段
		    url:"<%=basePath%>dept/queryAll.action",
		    fitColumns: true,
			striped: true,
			editable:false,//不可编辑，只能选择
		    columns:[[
		        {field:'depId',title:'编号',width:100},
		        {field:'depName',title:'名称',width:150}
		    ]]
		}); --%>

	});
  
    //表格查询
	function searchUser(){
		var params = $('#userTable').datagrid('options').queryParams; //先取得 datagrid 的查询参数
		var fields =$('#queryForm').serializeArray(); //自动序列化表单元素为JSON对象
		$.each( fields, function(i, field){
			params[field.name] = field.value; //设置查询参数
		}); 
		$('#userTable').datagrid('reload'); //设置好查询参数 reload 一下就可以了
	}
	//清空查询条件
	function clearForm(){
		$('#queryForm').form('clear');
		searchUser();
	}
    
	</script>	
  </head>
  
  <body>
    <form id="queryForm" style="margin:8;text-align: center;">
		<table width="100%">
			<tr>
			<td>所属部门：<input id="deptCombo" name="userDep" style="width: 300"></td>
			<td>名字：<input name="userName" style="width: 200"></td>
			<td>登录账号：<input name="userId" style="width: 200"></td>
			<td>用户状态：<select name="userRname" style="width: 200">
					 <option value="kongbai"></option>
   					 <option value=1>已启用</option>
   					 <option value=0>未启用</option>
					</select>
			</td>
			<td align="center"><a href="#" onclick="searchUser();" class="easyui-linkbutton" iconCls="icon-search">查询</a></td>
			<td align="center"><a href="#" onclick="clearForm();" class="easyui-linkbutton" iconCls="icon-search">清空</a></td>
			</tr>
		</table>
	</form>
	<div style="padding:10" id="tabdiv">
		<table id="monthTable"></table>
	</div>
	
</body>
</html>