<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>用户权限列表</title>
</head>
<body>
	<div class="container">
		<jsp:include page="inc.jsp" />
		<nav class="breadcrumb">
			<i class="Hui-iconfont">&#xe67f;</i>我的桌面<span
				class="c-gray en">&gt;</span><a
				href="${pageContext.request.contextPath}/admin/user/list">用户列表</a><span
				class="c-gray en">&gt;</span>用户权限列表<a
				class="btn btn-success btn-xs r"
				style="line-height: 1.5em; top: -2px;"
				href="javascript:location.replace(location.href);" title="刷新"> <i
				class="Hui-iconfont">&#xe68f;</i></a>
		</nav>
		<a class="btn btn-warning r" role="button"
			href="${pageContext.request.contextPath}/admin/user/list">返回上一级</a><br>
		<br> 用户名：${user.username}，昵称：${user.nickname}
		<div class="panel panel-info">
			<table class="table table-striped">
				<thead>
					<tr class="info">
						<th>资源名称</th>
						<th>资源 url</th>
						<th>资源权限字符串</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${resources}" var="res">
						<tr>
							<td>${res.name}</td>
							<td>${res.url}</td>
							<td>${res.permission}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
