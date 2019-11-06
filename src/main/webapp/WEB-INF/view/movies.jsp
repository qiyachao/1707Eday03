<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path=request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="/css/index_work.css"/> 
<script type="text/javascript" src="/js/jquery-1.8.3.js"></script>
</head>
<body>
	<table>
	<tr>
	<td><input type="checkbox" onclick="selAll(this.checked)"></td>
	<td>名称</td>
	<td>导演</td>
	<td><a href="javascript:query('price')">价格</a></td>
	<td><a href="javascript:query('uptime')">上映时间</a></td>
	<td><a href="javascript:query('longtime')">时长</a></td>
	<td>类型</td>
	<td><a href="javascript:query('year')">年代</a></td>
	<td>地区</td>
	<td>状态</td>
	<td>操作</td>
	</tr>
	<c:forEach items="${movies }" var="m">
	<tr>
	<td><input type="checkbox" class="ck" value="${m.id }"></td>
	<td>${m.name }</td>
	<td>${m.actor }</td>
	<td>${m.price }</td>
	<td><fmt:formatDate value="${m.uptime }" timeStyle="yyyy-HH-mm"/></td>
	<td>${m.longtime}</td>
	<td>${m.type }</td>
	<td>${m.year}</td>
	<td>${m.area }</td>
	<td>${m.status }</td>
	<td>
	<c:if test="${m.status == "热映" }">
		<button type="button" onclick="update('${m.id}','下架')">下架</button>
	</c:if>
	<c:if test="${m.status == "下架" }">
		<button type="button" onclick="update('${m.id}','即将上映')">即将上映</button>
	</c:if>
	<c:if test="${m.status == "即将上映" }">
		<button type="button" onclick="update('${m.id}','热映')">热映</button>
	</c:if>
	</td>
	</tr>
	</c:forEach>
	<tr>
	<td colspan="15">
	${page }
	</td>
	</tr>
	</table>
</body>
<script type="text/javascript">

	var orderMethod ='${movieVo.orderMethod=='asc'?'desc':'asc'}';
	
	function query(orderFiled){
		
		location.href="/list?orderFiled="+orderFiled+"&orderMethod="+orderMethod;
	}
	

	function update(){
		$.post(
				"update",
				{id:id,status:status},
				function(flag){
					if(flag){
						alert("成功");
						location.reload();
					}else{
						alert("失败");
					}
				}
		)	
	}
	
</script>
</html>