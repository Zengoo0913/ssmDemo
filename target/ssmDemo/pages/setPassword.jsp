<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JIKEN科技有限公司考勤系统</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
</head>
<style>
</style>

<body>
    <div class="indexPage">
        <div><h1>欢迎光临JIKEN科技有限公司考勤系统</h1></div>
        <div class="subForm">
            <h2>修改密码</h2>
            <form action="${pageContext.request.contextPath}/user/setPassword.do?username=<%out.print(request.getParameter("username"));%>" method="post">
                <div>
                    <h3>旧密码：</h3><input type="password" name="oldPassword" class="textInput" value="" placeholder="请输入旧密码">
                </div>
                <div>
                    <h3>新密码：</h3><input type="password" name="newPassword" class="textInput" value="" placeholder="请输入新密码">
                </div>
                <div class="buttonBox">
                    <input type="button" class="button registButton" value="取消">
                    <input type="submit" class="button loginButton" value="确定">
                </div>
            </form>
        </div>
        <div class="version">

        </div>
    </div>
</body>

</html>