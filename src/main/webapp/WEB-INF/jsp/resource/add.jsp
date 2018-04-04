<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>添加权限页面</title>
</head>
<body>
	<div class="container">
		<jsp:include page="inc.jsp" />
		<nav class="breadcrumb">
			<i class="Hui-iconfont">&#xe67f;</i>我的桌面<span
				class="c-gray en">&gt;</span><a
				href="${pageContext.request.contextPath}/admin/resource/list">权限列表</a><span
				class="c-gray en">&gt;</span>添加权限<a class="btn btn-success btn-xs r"
				style="line-height: 1.5em; top: -2px;"
				href="javascript:location.replace(location.href);" title="刷新"> <i
				class="Hui-iconfont">&#xe68f;</i>
			</a>
		</nav>
		<a class="btn btn-warning r" role="button"
			href="${pageContext.request.contextPath}/admin/resource/list">返回上一级</a><br>
		<br>
		<div class="panel panel-danger">
			<div class="panel-heading">添加权限</div>
			<div class="panel-body">
				<sf:form method="post" modelAttribute="resource" id="resourceForm"
					class="form-horizontal" role="form">
					<div class="form-group">
						<label for="inputName" class="col-sm-2 control-label">权限名称：</label>
						<div class="col-sm-10">
							<sf:input path="name" class="form-control" id="inputName"
								placeholder="请输入权限名称" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputPermission" class="col-sm-2 control-label">权限
							permission ：</label>
						<div class="col-sm-10">
							<sf:input path="permission" class="form-control"
								id="inputPermission" placeholder="请输入权限 permission 字符串" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputUrl" class="col-sm-2 control-label">权限
							url ：</label>
						<div class="col-sm-10">
							<sf:input path="url" class="form-control" id="inputUrl"
								placeholder="请输入权限 url" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">提交</button>
							<button type="reset" class="btn btn-default">重置</button>
						</div>
					</div>
				</sf:form>
			</div>
		</div>
	</div>
</body>
</html>
