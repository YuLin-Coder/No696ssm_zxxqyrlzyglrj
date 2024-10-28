<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用人力资源管理系统</title>
<link rel="stylesheet" type="text/css" href="h-ui/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/css/style.css" />
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="h-ui/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="h-ui/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript" src="js/jobs.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>职位招聘管理 <span class="c-gray en">&gt;</span>
		编辑职位招聘<a class="btn btn-success radius r" style="line-height: 1.6em; margin-top: 3px"
			href="jobs/getJobsById.action?id=${jobs.jobsid }" title="刷新"> <i class="Hui-iconfont">&#xe68f;</i></a> &nbsp;&nbsp;
		&nbsp;<a class="btn btn-success radius r" style="line-height: 1.6em; margin-top: 3px" href="jobs/getAllJobs.action"
			title="返回"> <i class="Hui-iconfont">&#xe66b;</i></a>
	</nav>
	<article class="page-container">
		<form class="form form-horizontal" id="form-article-add" action="jobs/updateJobs.action" name="myform" method="post">
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">标题</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="title" class="input-text" id="title" value="${jobs.title}" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">部门</label>
				<div class="formControls col-xs-8 col-sm-9">
					<span class="select-box"><select name="deptid" class="select" id="deptid"><c:forEach
								items="${deptList}" var="dept">
								<option value="${dept.deptid}" ${dept.deptid == jobs.deptid?"selected":"" }>${dept.deptname }</option>
							</c:forEach></select></span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">职务</label>
				<div class="formControls col-xs-8 col-sm-9">
					<span class="select-box"><select name="dutyid" class="select" id="dutyid"><c:forEach
								items="${dutyList}" var="duty">
								<option value="${duty.dutyid}" ${duty.dutyid == jobs.dutyid?"selected":"" }>${duty.dutyname }</option>
							</c:forEach></select></span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">招聘人数</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="num" class="input-text" id="num" value="${jobs.num}" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">详情</label>
				<div class="formControls col-xs-8 col-sm-9">
					<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
					<textarea class="textarea" name="contents" id="contents">${jobs.contents} </textarea>
					<script type="text/javascript">
						CKEDITOR.replace('contents', {
							language : 'zh-cn'
						});
					</script>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">备注</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="memo" class="input-text" id="memo" value="${jobs.memo}" />
				</div>
			</div>
			<div class="row cl">
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
					<input type="hidden" name="jobsid" id="jobsid" value="${jobs.jobsid}" /><input type="hidden" name="asignnum"
						id="asignnum" value="${jobs.asignnum}" /> <input type="hidden" name="confirmnum" id="confirmnum"
						value="${jobs.confirmnum}" /> <input type="hidden" name="addtime" id="addtime" value="${jobs.addtime}" /> <input
						type="hidden" name="hits" id="hits" value="${jobs.hits}" /> <input type="hidden" name="status" id="status"
						value="${jobs.status}" /> <input type="hidden" id="basepath" value="<%=basePath%>" />
					<button id="sub" class="btn btn-secondary radius" type="submit">
						<i class="Hui-iconfont">&#xe632;</i>提交保存
					</button>
					<button id="res" class="btn btn-default radius" type="reset">
						<i class="Hui-iconfont">&#xe68f;</i>取消重置
					</button>
				</div>
			</div>
		</form>
	</article>
</body>
</html>


