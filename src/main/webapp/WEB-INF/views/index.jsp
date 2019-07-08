<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/4
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name = "viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="/static/css/animate.css" rel="stylesheet">
    <link href="/static/css/style.css" rel="stylesheet">

    <script type="text/javascript" src="/static/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
</head>
<body class="gray-bg">
<div class="loginColumns animated fadeInDown">
    <div class="col-lg-6">
        <h2 class="font-bold">车牌识别系统后台</h2>
    </div>
    <div class="col-md-6">
        <div class="ibox-content">
            <div class="m-t">
                <p style="..." id="info"></p>
                <div class="form-group">
                    <input id="username" class="form-control" placeholder="用户名">
                </div>
                <div class="form-group">
                    <input id="password" class="form-control" placeholder="密码" type="password">
                </div>
                <button id="loginbutton" class="btn btn-primary block full-width m-b">登录</button>
            </div>
        </div>
    </div>
</div>
<script>
    $("#loginbutton").click(function () {
        if ($("#username").val()==''&& $("#password").val()==''){
            $("#info").text("用户名密码不能为空");
        }
        else if ($("#username").val()==''){
            $("#info").text("用户名不能为空");
        }
        else if($("#password").val()==''){
            $("#info").text("密码不能为空");
        }
        else {
            $.ajax({
                type:"POST",
                url:"/loginCheck",
                data:{
                    username:$("#username").val(),
                    password:$("#password").val()
                },
                dataType:"json",
                success:function (data) {
                    if (data.stateCode.trim() =='0'){
                        $("#info").text("提示：用户名或密码错误");
                    } else if (data.stateCode.trim()=='1'){
                        $("#info").text("提示：登录成功，跳转中...");
                        window.location.href="/main";
                    }

                }
            });
        }
    })
</script>

</body>
</html>
