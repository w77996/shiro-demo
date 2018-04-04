<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>角色资源列表</title>
</head>
<body>
	<div class="container">
		<jsp:include page="inc.jsp" />
		<nav class="breadcrumb">
			<i class="Hui-iconfont">&#xe67f;</i>我的桌面<span
				class="c-gray en">&gt;</span><a
				href="${pageContext.request.contextPath}/admin/role/list">角色列表</a><span
				class="c-gray en">&gt;</span>角色资源列表<a
				class="btn btn-success btn-xs r"
				style="line-height: 1.5em; top: -2px;"
				href="javascript:location.replace(location.href);" title="刷新"> <i
				class="Hui-iconfont">&#xe68f;</i>
			</a>
		</nav>
		<a class="btn btn-warning r" role="button"
			href="${pageContext.request.contextPath}/admin/role/list">返回上一级</a><br>
		<br> <span>${role.name}（${role.sn}）的拥有的权限有：</span>
		<div class="panel panel-success">
			<table class="table table-striped">
				<thead>
					<tr class="success">
						<th>权限标识</th>
						<th>权限名称</th>
						<th>权限 url</th>
						<th>资源权限字符串</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${resourceList}" var="resource">
						<tr>
							<td>${resource.id}</td>
							<td>${resource.name}</td>
							<td>${resource.url}</td>
							<td>${resource.permission}</td>
							<td><input type="checkbox" class="resourceId"
								value="${resource.id}"></td>
						</tr>
					</c:forEach>

					<%-- 将从数据库查询出来的角色所绑定的权限放在这个隐藏域里面--%>
					<c:forEach items="${hasResourceIds}" var="hasResourceId">
						<input type="hidden" class="hasResourceId"
							value="${hasResourceId}" />
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/jquery-3.1.0.min.js"></script>
	<script type="text/javascript">
		$(function() {

			// 为角色所绑定的资源进行显示设置 begin
			var resourceArray = new Array();
			$(".hasResourceId").each(function() {
				var hasResource = $(this);
				resourceArray.push(hasResource.val());
			});

			$(".resourceId").each(function() {
				var resource = $(this);
				if ($.inArray(resource.val(), resourceArray) >= 0) {
					resource.attr("checked", "checked");
				}
			});
			// 为角色所绑定的资源进行显示设置 end

			// 为复选框设置单击事件
			$(".resourceId")
					.on(
							"click",
							function() {
								var c = 0;
								var ifChecked = this.checked
								if (ifChecked) {
									c = 1;
								}
								var roleId = "${role.id}";
								var resourceId = $(this).val();
								$
										.post(
												"${pageContext.request.contextPath}/admin/role/resource",
												{
													"roleId" : roleId,
													"resourceId" : resourceId,
													"check" : c
												},
												function(data) {
													if (data.success) {
														var ctext = c == 0 ? "权限取消成功"
																: "权限绑定成功";
														alert(ctext);
													} else {
														alert(data.errorInfo);
													}
												});
							});
		})
	</script>
</body>
</html>
