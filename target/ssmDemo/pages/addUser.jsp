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
            <h2>添加用户</h2>
            <form action="${pageContext.request.contextPath}/user/addUser.do" method="post">
                <div>
                    <h3>用户名称：</h3><input type="text" name="username" class="textInput" value="" placeholder="请输入用户名称">
                </div>
                <div>
                    <h3>用户密码：</h3><input type="password" name="password" class="textInput" value="" placeholder="请输入用户密码">
                </div>
                <div>
                    <h3>用户姓名：</h3><input type="text" name="uName" class="textInput" value="" placeholder="请输入用户姓名">
                </div>

                <div>
                    <h3>用户性别：</h3><input type="text" name="uSex" class="textInput" value="" placeholder="请输入用户性别">
                </div>
                <div>
                    <h3>用户年龄：</h3><input type="text" name="uAge" class="textInput" value="" placeholder="请输入用户年龄">
                </div>
                <div>
                    <h3>所属部门：</h3><input type="text" name="uDev" class="textInput" value="" placeholder="请输入所属部门">
                </div>
                <div>
                    <h3>用户等级：</h3><input type="text" name="uLev" class="textInput" value="" placeholder="请输入用户等级">
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