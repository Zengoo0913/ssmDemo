<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JIKEN科技有限公司考勤系统</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
    <div class="indexPage">
        <div>
            <h1>欢迎光临JIKEN科技有限公司考勤系统</h1>
            <h3><h3 id="time"></h3>&nbsp;&nbsp;秒后跳转至登录页面……</h3>
        </div>
    </div>
</body>
<script>
    var time = 3;
    var timego=document.getElementById("time");
    function loadWindow() {
        window.location.href = "${pageContext.request.contextPath}/pages/login.jsp";
    }
    function daojishi(){
        timego.innerHTML=time;
         console.log(time);
        setTimeout(daojishi,1000);
        if(time == 0){
            setTimeout(loadWindow,1000);
        }else{
            time = time - 1;
        }
        
    }
    daojishi();
</script>

</html>