<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>${title}</title>
<link href="themes/nzblue/css/css.css" rel="stylesheet" type="text/css" />
<link href="themes/nzblue/css/css_2.css" rel="stylesheet" type="text/css" />
<link href="themes/nzblue/css/nzcms_top.css" rel="stylesheet" type="text/css">
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<table width="1004" border="0" align="center" cellpadding="1" cellspacing="10" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
		<tr>
			<td align="center" valign="top" bgcolor="#FFFFFF" class="bg_qc">
				<table width="100%" height="27" border="0" cellpadding="8" cellspacing="0" bgcolor="#F6F6F6">
					<tr>
						<td align="left" class="p12">您的位置： <a href="<%=basePath%>">首页</a>&nbsp;&gt;&gt;&nbsp;我的考勤
						</td>
					</tr>
				</table>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="left">
							<div class="z" id="z">
								<table width="99%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
									<tr>
										<td height="30" colspan="9" align="left" background="themes/nzblue/images/nzcms/list_bg.gif" class="white14B">我的考勤</td>
									</tr>
									<tr>
										<td align="center" bgcolor="#FFFFFF">部门</td>
										<td align="center" bgcolor="#FFFFFF">员工</td>
										<td align="center" bgcolor="#FFFFFF">考勤类型</td>
										<td align="center" bgcolor="#FFFFFF">日期</td>
										<td align="center" bgcolor="#FFFFFF">备注</td>
									</tr>
									<c:forEach items="${attendList}" var="attend">
										<tr align="center" bgcolor="#FFFFFF">
											<td class="center">${attend.deptname}</td>
											<td class="center">${attend.realname}</td>
											<td class="center">${attend.catename}</td>
											<td class="center">${attend.addtime}</td>
											<td class="center">${attend.memo}</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</td>
					</tr>
				</table>
				<table height="20" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>${html }</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
