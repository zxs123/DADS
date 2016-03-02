<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<title>投标计划</title> <script type="text/javascript" src="jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/datagrid-cellediting/datagrid-cellediting.js"></script>	
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.4.4/themes/gray/easyui.css"></link>
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.4.4/themes/icon.css"></link> 
<script type="text/javascript">
	$(function() {
		$("#bidPlan").datagrid({
			title : '投标计划',
			rownumbers:true,
			fitColumns : true,
			striped : true,
			singleSelect : false,
			height:600,
		    columns : [[
				{field:'ck',checkbox:true,width:2,align:'center'}, 
				{field:'pName',title:'项目名称',width:20,align:'center',editor:'text'},
				{field:'pType',title:'工程类别',width:20,align:'center',editor:'text'},
				{field:'pService',title:'服务性质',width:20,align:'center',editor:'text'},
				{field:'pScale',title:'规模',width:20,align:'center',editor:'text'},
				{field:'pOwnername',title:'业主名称',width:20,align:'center',editor:'text'},
				{field:'pConstruction',title:'建设性质',width:20,align:'center',editor:'text'},
				{field:'pLocation',title:'建设地点',width:20,align:'center',editor:'text'},
				{field:'pOpentime',title:'开标时间',width:20,align:'center',editor:'datebox'},
				{field:'pBmanager',title:'商务经理',width:20,align:'center',editor:'text'},
				{field:'pPmanager',title:'项目经理',width:20,align:'center',editor:'text'},
				{field:'pDepid',title:'负责部门',width:20,align:'center',editor:'text'},
				{field:'pDate',title:'录入时间',width:20,align:'center',editor:'datebox'},
				{field:'pSign',title:'是否计划',width:20,align:'center',editor:'text'},
				{field:'pDesign',title:'设计阶段',width:20,align:'center',editor:'text'}
			]],
			toolbar:'#tb',
			footer:'#ft'
		});
		
		//datagrid单元格编辑
		$("#bidPlan").datagrid('enableCellEditing');
	
		//创建按钮的点击触发事件
		$("#addTab").click(function(){
			//获取数字框填入的数字
			var num = $("#num").val();
			//创建新的空行
			for(var i=0; i<num; i++){
				appendRow();
			}
		});
		
		//删除按钮的点击触发事件
		$("#delTab").click(function(){
			//获取用户选择的行纪录
			var arr = $("#bidPlan").datagrid('getSelections');
			if(arr.length<=0){
				$.messager.alert('提示信息','请至少选择一条记录删除','warning');
			}else{
				$.messager.confirm('提示信息','确认删除所选记录吗？',function(r){
					if(r){
						 for(var i=0;i<arr.length;i++){
							 //遍历获取选中的单行
							 var index = $("#bidPlan").datagrid('getRowIndex',arr[i]);   //获取索引
							 $("#bidPlan").datagrid('deleteRow',index);
						} 
					}else{
						return;
					}
				});
			}
		});
		
		//保存按钮的点击触发事件
		$("#saveTab").click(function(){
			//获取所有的行纪录
			var rows = $("#bidPlan").datagrid('getRows');
			//判断是否存在项目名称为空的行纪录
			for(var i=0;i<rows.length;i++){
				if(rows[i].pName==''){
					//获取当前行的行号
					var rownum = $("#bidPlan").datagrid('getRowIndex',rows[i])+1;
					$.messager.alert('提示信息','第'+rownum+'行记录的项目名称不能为空！','warning');
					return ;
				}
			}
			var rowsData = JSON.stringify(rows);  
			//向后台发出ajax请求
			$.ajax({
				type:'post',
				url:'monRepInput/addBidPlan.action',
				cache:false,
				data:{rowsData:rowsData},
				success:function(result){
					$.messager.alert('提示信息',result.msg,'info');
				},
			});
			//清除datagrid的所有行
			var temp = rows.length;
			for(var j=0;j<temp;j++){
				$("#bidPlan").datagrid('deleteRow',0);
			} 
		});
		
		//在datagrid中追加一行空记录
		function appendRow(){
			$("#bidPlan").datagrid('appendRow',{
				pName:'',
				pType:'',
				pService:'',
				pScale:'',
				pOwnername:'',
				pConstruction:'',
				pLocation:'',
				pOpentime:'',
				pBmanager:'',
				pPmanager:'',
				pDepid:'',
				pDate:'',
				pSign:'',
				pDesign:''
			});
		}
	});
	
	function onchangeEvent(){
		var textarea = $("#pasteArea");
	    var str1=textarea.val();
	    str1 = str1.replace(/;/g,"###");
	    str1 = str1.replace(/:/g,"%%%");   
	    //获取并解析剪贴板数据
	 	var dataValue = str1.replace(/[\&\r]/g,"").replace(/([^\t\n]*)[\t]/g,"$1:").replace(/([^\n]*?)\n/g,"$1;").split(";");
	    //获取当前点击的cell的行号与列号
	 	var opt = $("#bidPlan").datagrid('cell');
	 	var cur_index = opt.index+1;    // 当前行号
	 	var cur_colnum = getCurColnum(opt.field);  //当前列号
	 	var arr = $("#bidPlan").datagrid('getRows');
	 	var rows = arr.length;    //表格总行数
	 	
	 	//获取复制的数据的行数与列数
	 	var copyindex = dataValue.length-1;
	 	var arr1 = dataValue[0].split(":");
	 	var copycol = arr1.length;
	 	//界限判断
	 	if(copyindex <= rows-cur_index+1){  
	 		if(copycol <= 14-cur_colnum+1){
	 			for(var i=0;i<dataValue.length-1;i++){
	 				var s2 = dataValue[i].split(":");  //s2填装了一行的数据
	 				for(var j=0;j<s2.length;j++){
	 					var fieldName = getFieldName(cur_colnum+j);
	 					arr[i+opt.index][fieldName] = s2[j];
	 				}
	 				$("#bidPlan").datagrid('refreshRow',opt.index+i);
	 			}
	 			$("#bidPlan").datagrid('endEdit',opt.index);    //结束当前选择单元格行编辑
	 		}else{      //列超过界限
	 			$.messager.alert('提示信息','复制数据的列数超过界限，请考虑增加列数','warning');
	 		}
	 	}else{  //行超过界限
	 		$.messager.alert('提示信息','复制数据的行数超过界限，请考虑增加列数','warning');
	 	}
	 	//清空textarea中的数据
	 	textarea.val('');
	 	//textarea失去焦点
	 	textarea.blur();
	}
	//由列名判断当前列号
	function getCurColnum(field){
		switch(field){
		case 'pName':
			return 1;
			break;
		case 'pType':
			return 2;
			break;
		case 'pService':
			return 3;
			break;
		case 'pScale':
			return 4;
			break;
		case 'pOwnername':
			return 5;
			break;
		case 'pConstruction':
			return 6;
			break;
		case 'pLocation':
			return 7;
			break;
		case 'pOpentime':
			return 8;
			break;
		case 'pBmanager':
			return 9;
			break;
		case 'pPmanager':
			return 10;
			break;
		case 'pDepid':
			return 11;
			break;
		case 'pDate':
			return 12;
			break;
		case 'pSign':
			return 13;
			break;
		case 'pDesign':
			return 14;
			break;
		}
	}
	//由列号获取列名
	function getFieldName(colnum){
		switch(colnum){
		case 1:
			return 'pName';
			break;
		case 2:
			return 'pType';
			break;
		case 3:
			return 'pService';
			break;
		case 4:
			return 'pScale';
			break;
		case 5:
			return 'pOwnername';
			break;
		case 6:
			return 'pConstruction';
			break;
		case 7:
			return 'pLocation';
			break;
		case 8:
			return 'pOpentime';
			break;
		case 9:
			return 'pBmanager';
			break;
		case 10:
			return 'pPmanager';
			break;
		case 11:
			return 'pDepid';
			break;
		case 12:
			return 'pDate';
			break;
		case 13:
			return 'pSign';
			break;
		case 14:
			return 'pDesign';
			break;
		}
	}
</script>
</head>
<body>
	<table id="bidPlan"></table>
	<div id="tb" style="padding:2px 5px;">
                             新增表个数: 
        <input id="num" type="text" value="1" class="easyui-numberbox" min="1" max="100"></input> 
        <a id="addTab" class="easyui-linkbutton" iconCls="icon-add">创建</a>
    </div>
    <div id="ft" style="padding:2px 5px;">
        <a id="saveTab" class="easyui-linkbutton" iconCls="icon-save" >保存</a>
        <a id="delTab" class="easyui-linkbutton" iconCls="icon-remove" >删除</a>
    </div>
    	<textarea id="pasteArea" rows="0" cols="0" style="border: none;resize: none;overflow:hidden" oninput="onchangeEvent()" onpropertychange="onchangeEvent()"></textarea>
</body>
</html>