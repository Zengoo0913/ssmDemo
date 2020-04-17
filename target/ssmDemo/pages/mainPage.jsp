<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JIKEN科技有限公司考勤系统</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mainPage.css">
</head>

<body>
    <div class="headbox tips">
        <h3>尊敬的${uName}用户，欢迎光临JIKEN科技有限公司考勤系统</h3>
        <input type="button" onclick="quit()" value="退出" class="quitButton">
    </div>
    <div class="leftbox menu">
        <ul>
            <a href="${pageContext.request.contextPath}/pages/mainPage.jsp?index=1"><li><p class="menuButton">用户信息管理</p></li></a>
            <a href="${pageContext.request.contextPath}/pages/mainPage.jsp?index=2"><li><p class="menuButton">用户管理</p></li></a>
            <a href="${pageContext.request.contextPath}/pages/mainPage.jsp?index=3"><li><p class="menuButton">密码修改</p></li></a>
            <a href="${pageContext.request.contextPath}/pages/mainPage.jsp?index=4"><li><p class="menuButton">用户权限修改</p></li></a>
        </ul>
    </div>
    <div>
        <iframe class="contextPage" src="${pageContext.request.contextPath}<%
         String index=request.getParameter("index");
         if (index==null){
             out.print("/pages/nullPage.jsp");
         }else if (index.equals("3")){
             out.print("/pages/setPassword.jsp?username=");%>${username}<%
         }else {
            out.print("/user/");
            switch (index){
                case "1":
                    out.print("doSelectByUsername.do?username=");%>${username}<%
                    break;
                case "2":
                    out.print("selectAll.do?page=1&size=5");
                    break;
                case "4":
                    out.print("nullPage");
                    break;
                default:
                    break;
            }
         }%>"></iframe>

    </div>

    <script>
        function quit(){
            window.location.href="${pageContext.request.contextPath}/pages/login.jsp";
        }
    </script>
</body>
</html>