<%@ page import="com.zjitc.bean.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JIKEN科技有限公司考勤系统</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/userInfo-list.css">
</head>

<body>
    <div class="header">
        <h1>用户信息管理</h1>
    </div>
    <div class="context">
        <div class="contextHead">员工编号</div>
        <div class="contextInfo">${uId}</div>
    </div>
    <div class="context">
        <div class="contextHead">员工姓名</div>
        <div class="contextInfo">${uName}</div>
    </div>
    <div class="context">
        <div class="contextHead">员工性别</div>
        <div class="contextInfo">${uSex}</div>
    </div>
    <div class="context">
        <div class="contextHead">员工年龄</div>
        <div class="contextInfo">${uAge}</div>
    </div>
    <div class="context">
        <div class="contextHead">员工所属部门</div>
        <div class="contextInfo">${uDev}</div>
    </div>
    <div class="context">
        <div class="contextHead">员工级别</div>
        <div class="contextInfo">${uLev}</div>
    </div>
</body>

</html>