<%--
  Created by IntelliJ IDEA.
  User: HUI
  Date: 2020/11/2
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>登录成功！！！</h3>
<!--用户-->
<table class="providerTable" cellpadding="0" cellspacing="0">
    <tr class="firstTr">
        <th width="10%">id</th>
        <th width="20%">姓名</th>
        <th width="10%">年龄</th>
        <th width="10%">电话</th>
        <th width="30%">年级</th>
    </tr>
    <c:forEach var="stu" items="${listStu}" varStatus="status">
        <tr>
            <td>
                <span>${stu.id }</span>
            </td>
            <td>
                <span>${stu.name }</span>
            </td>
            <td>
                <span>${stu.age}</span>
            </td>
            <td>
                <span>${stu.phone}</span>
            </td>
            <td>
                <span>
                    <c:if test="${stu.gid==1}">大一</c:if>
                    <c:if test="${stu.gid==2}">大二</c:if>
                    <c:if test="${stu.gid==3}">大三</c:if>
                </span>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
