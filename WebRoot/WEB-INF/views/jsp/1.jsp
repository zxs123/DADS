<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>中南电力设计</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<link href="/Statistics/js/windows.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript"
	src="IconPage/jquery-1.3.2.min.js"></script>
<link href="/Statistics/css/frameStyle.css" rel="stylesheet"
	type="text/css" />
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">
	<form name="login" action="default/loginAction" method="post">
		<table width="100%" border="1" height="100%" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="600" background="images/login_01.gif">&nbsp;</td>
				<td height="600" width="495" background="images/login_01.gif">
					<table width="100%" height="100%" border="1" cellpadding="0"
						cellspacing="0">
						<tr>
							<td colspan="6"><img src="images/login_02.gif" width="495"
								height="60" alt=""></td>
						</tr>
						<tr>
							<td colspan="2"><img src="images/login_04.gif" width="196"
								height="58" alt=""></td>
							<td colspan="4"><img src="images/login_05.gif" width="299"
								height="58" alt=""></td>
						</tr>
						<tr>
							<td colspan="6"><img src="images/login_06.gif" width="495"
								height="46" alt=""></td>
						</tr>
						<tr>
							<td colspan="6"><img src="images/login_07.gif" width="495"
								height="58" alt=""></td>
						</tr>
						<tr>
							<td><img src="images/login_08.gif" width="192" height="29"
								alt=""></td>
							<td colspan="4" width="151" height="29"><input name="userid"
								type="text"
								style="width: 150px; height: 26px; border: 0px; border-style: none; line-height: 26px; background-image: url(images/login_09.gif)" /></td>
							<td><img src="images/login_10.gif" width="152" height="29"
								alt=""></td>
						</tr>
						<tr>
							<td colspan="6"><img src="images/login_11.gif" width="495"
								height="22" alt=""></td>
						</tr>
						<tr>
							<td><img src="images/login_12.gif" width="192" height="29"
								alt=""></td>
							<td colspan="4" background="images/login_13.gif" width="151"
								height="29"><input name="password" type="password"
								style="width: 150px; height: 26px; vertical-align: middle; line-height: 26px; border: 0px; border-style: none; background-image: url(images/login_13.gif)" /></td>
							<td><img src="images/login_14.gif" width="152" height="29"
								alt=""></td>
						</tr>
						<tr>
							<td colspan="6"><img src="images/login_15.gif" width="495"
								height="18" alt=""></td>
						</tr>
						<tr>
							<td colspan="3"><img src="images/1_120531001852_1_17.gif"
								width="280" height="24" alt=""></td>
							<td><input name="Submit2" type="submit" value=""
								style="width: 54px; border: 0px; cursor: pointer; height: 24px; background-image: url(images/login_17.gif)" />
							</td>
							<td colspan="2"><img src="images/1_120531001852_1_18.gif"
								width="161" height="24" alt=""></td>
						</tr>
						<tr>
							<td colspan="6"><img src="images/login_19.gif" width="495"
								height="107" alt=""></td>
						</tr>
						<tr>
							<td colspan="6"><img src="images/login_20.gif" width="495"
								height="129" alt=""></td>
						</tr>
					</table>
				</td>
				<td height="600" background="images/login_01.gif">&nbsp;</td>
			</tr>
			<tr>
				<td height="190" colspan="3" style="background-color: #f5f5f5;">&nbsp;</td>
			</tr>
		</table>


	</form>

</body>
</html>
