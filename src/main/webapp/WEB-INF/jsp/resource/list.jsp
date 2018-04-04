<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>资源查看列表</title>
</head>
<body>
	<div class="container">
		<jsp:include page="inc.jsp" />
		<nav class="breadcrumb">
			<i class="Hui-iconfont">&#xe67f;</i>我的桌面<span
				class="c-gray en">&gt;</span>权限列表<a class="btn btn-success btn-xs r"
				style="line-height: 1.5em; top: -2px;"
				href="javascript:location.replace(location.href);" title="刷新"> <i
				class="Hui-iconfont">&#xe68f;</i>
			</a>
		</nav>
		<a class="btn btn-info r" role="button"
			href="${pageContext.request.contextPath}/admin/resource/add">添加权限</a><br>
		<br>
		<div class="panel panel-danger">
			<table class="table table-striped">
				<thead>
					<tr class="danger">
						<th>资源标识</th>
						<th>资源名称</th>
						<th>资源 permission</th>
						<th>资源 url</th>
						<th>资源操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${resourceList}" var="resource">
						<tr>
							<td>${resource.id}</td>
							<td>${resource.name}</td>
							<td>${resource.permission}</td>
							<td>${resource.url}</td>
							<td><a
								href="${pageContext.request.contextPath}/admin/resource/${resource.id}">修改权限</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
