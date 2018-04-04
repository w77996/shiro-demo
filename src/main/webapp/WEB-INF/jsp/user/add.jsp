<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>添加用户</title>
</head>
<body>
	<div class="container">
		<jsp:include page="inc.jsp"></jsp:include>
		<nav class="breadcrumb">
			<i class="Hui-iconfont">&#xe67f;</i>我的桌面<span
				class="c-gray en">&gt;</span><a
				href="${pageContext.request.contextPath}/admin/user/list">用户列表</a><span
				class="c-gray en">&gt;</span>添加用户 <a
				class="btn btn-success btn-xs r"
				style="line-height: 1.5em; top: -2px;"
				href="javascript:location.replace(location.href);" title="刷新"> <i
				class="Hui-iconfont">&#xe68f;</i>
			</a>
		</nav>
		<a class="btn btn-warning r" role="button"
			href="${pageContext.request.contextPath}/admin/user/list">返回上一级</a><br>
		<br>
		<div class="panel panel-info">
			<div class="panel-heading">添加用户</div>
			<div class="panel-body">
				<sf:form action="${pageContext.request.contextPath}/admin/user/add"
					method="post" modelAttribute="user" id="addForm"
					class="form-horizontal" role="form">
					<div class="form-group">
						<label for="inputUsername" class="col-sm-2 control-label">
							用户名 </label>
						<div class="col-sm-10">
							<sf:input path="username" class="form-control" id="inputUsername"
								placeholder="请输入用户名" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputNickname" class="col-sm-2 control-label">
							昵称 </label>
						<div class="col-sm-10">
							<sf:input path="nickname" class="form-control" id="inputNickname"
								placeholder="请输入昵称" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">
							密码 </label>
						<div class="col-sm-10">
							<sf:input path="password" class="form-control" id="inputPassword"
								placeholder="请输入密码" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputstatus" class="col-sm-2 control-label">
							状态 </label>
						<div class="col-sm-10">
							<sf:select path="status" id="inputstatus" class="form-control">
								<sf:option value="0">停用</sf:option>
								<sf:option value="1">启用</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"> 角色 </label>
						<div class="col-sm-10">
							<c:forEach var="role" items="${roles}">
								<div class="checkbox">
									<label> <input type="checkbox" name="roleId"
										value="${role.id}" />${role.name}
									</label>
								</div>
							</c:forEach>
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
