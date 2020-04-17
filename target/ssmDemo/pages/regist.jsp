<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JIKEN科技有限公司考勤系统</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/regist.css">
</head>
<style>
</style>

<body>
    <div class="indexPage">
        <div><h1>欢迎光临JIKEN科技有限公司考勤系统</h1></div>
        <div class="subForm">
            <h2>注册系统</h2>
            <form action="${pageContext.request.contextPath}/user/doRegist.do" method="post">
                <div>
                    <h3>用&nbsp;&nbsp;户&nbsp;&nbsp;名：</h3><input type="text" name="username" class="textInput" value="" placeholder="请输入用户名">
                </div>
                <div>
                    <h3>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</h3><input type="password" name="password" class="textInput" value="" placeholder="请输入密码">
                </div>
                <div>
                    <h3>确认密码：</h3><input type="password" name="cpassword" class="textInput" value="" placeholder="请确认密码">
                </div>
                <div class="buttonBox">
                    <input type="submit" class="button registButton" value="注册">
                </div>
            </form>
        </div>
        <div class="version">

        </div>
    </div>

</body>

</html>