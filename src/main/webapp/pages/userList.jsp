<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JIKEN科技有限公司考勤系统</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/userInfo-list.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/userList.css">
</head>
<body>
    <div class="header">
        <h1>用户管理</h1>
    </div>
    <div class="employeeList">
        <button type="button" onclick="location.href='${pageContext.request.contextPath}/pages/addUser.jsp'" class="add" title="增加">增加</button>
        <table border="1">
            <tr class="listHead">
                <th>员工编号</th>
                <th>员工姓名</th>
                <th>员工所属部门</th>
                <th>员工级别</th>
                <th>相关操作</th>
            </tr>
            <c:forEach var="user" items="${pageInfo.list}">
            <tr>
                <td>${user.uId}</td>
                <td>${user.uName}</td>
                <td>${user.uDev}</td>
                <td>${user.uLev}</td>
                <td class="userDao">
                        <input type="button" onclick="location.href='${pageContext.request.contextPath}/user/doSelectByUsername.do?username=${user.username}'" value="查看" >
                        <input type="button" onclick="location.href='${pageContext.request.contextPath}/pages/updUser.jsp?uId=${user.uId}&username=${user.username}&uName=${user.uName}&uSex=${user.uSex}&uAge=${user.uAge}&uDev=${user.uDev}&uLev=${user.uLev}'" value="修改">
                        <input type="button" onclick="location.href='${pageContext.request.contextPath}/user/delUser.do?uid=${user.uId}'" value="删除">
                        <input type="button" value="权限">
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
    <div class="pageHelp">
        <ul>
            <a href="${pageContext.request.contextPath}/user/selectAll.do?page=${pageInfo.navigateFirstPage}&size=5" aria-label="Previous"><li>首页</li></a>
            <a href="${pageContext.request.contextPath}/user/selectAll.do?page=${pageInfo.prePage}&size=5"><li>上一页</li></a>
            <c:forEach begin="1" end="${pageInfo.pages}" var="pagenum">
                <a href="${pageContext.request.contextPath}/user/selectAll.do?page=${pagenum}&size=5"><li>${pagenum}</li></a>
            </c:forEach>
            <a href="${pageContext.request.contextPath}/user/selectAll.do?page=${pageInfo.nextPage}&size=5"><li>下一页</li></a>
            <a href="${pageContext.request.contextPath}/user/selectAll.do?page=${pageInfo.navigateLastPage}&size=5" aria-label="Next"><li>尾页</li></a>
        </ul>
    </div>

</body>
</html>