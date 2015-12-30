	function checkData() {
		

		var relation = $.trim($("#relation").val());
		if (null == relation || "" == relation || relation == 10) {
			alert("请至少选择一个认领方式！！");
			$("#relation").focus();
			return false;
		}
		
		var custname = $.trim($("#custname").val());
		if (null == custname || "" == custname) {
			alert("请填写客户姓名！");
			$("#custname").focus();
			return false;
		}
		
		var KEHHAO = $.trim($("#KEHHAO").val());
		if (null == KEHHAO || "" == KEHHAO) {
			alert("请填写客户号/客户账号！");
			$("#KEHHAO").focus();
			return false;
		}
		
		var LCNAME = $.trim($("#LCNAME").val());
		if (null == LCNAME || "" == LCNAME) {
			alert("请填写领出员工姓名！");
			$("#LCNAME").focus();
			return false;
		}
		
		var LCID = $.trim($("#LCID").val());
		if (null == LCID || "" == LCID) {
			alert("请填写领出员工工号！");
			$("#LCID").focus();
			return false;
		}
	
		

		var workname = $.trim($("#workname").val());
		if (null == workname || "" == workname) {
			alert("请填写领入员工姓名！");
			$("#workname").focus();
			return false;
		}
		
		var GUIYDH = $.trim($("#GUIYDH").val());
		if (null == GUIYDH || "" == GUIYDH) {
			alert("请填写领入员工工号  ！");
			$("#GUIYDH").focus();
			return false;
		}

		var QUANZH = $.trim($("#QUANZH").val());
		if (null == QUANZH || "" == QUANZH) {
			alert("请填写权重！");
			$("#QUANZH").focus();
			return false;
		}

			
	

	

	


	}