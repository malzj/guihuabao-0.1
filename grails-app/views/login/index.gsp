<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>规划宝后台管理系统</title>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'bootstrap-reset.css')}" rel="stylesheet" type="text/css">
    <link href="${resource(dir: 'assets/font-awesome/css', file: 'font-awesome.css')}" rel="stylesheet" type="text/css">
    <link href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet" type="text/css">
    <link href="${resource(dir: 'css', file: 'style-responsive.css')}" rel="stylesheet" type="text/css">
</head>

<body class="login-body">
<div class="container">

    <g:form class="form-signin" url="[controller:'login',action:'login']">
        <h2 class="form-signin-heading">规划宝后台管理系统</h2>
        <div class="login-wrap">
            <input name="username" type="text" class="form-control" placeholder="用户名" autofocus>
            <input name="password" type="password" class="form-control" placeholder="密码">

            <button class="btn btn-lg btn-login btn-block" type="submit">登录</button>

        </div>


    </g:form>

</div>

<script src="${resource(dir: 'bootstrap/js', file: 'jquery.js')}"></script>
<script src="${resource(dir: 'bootstrap/js', file: 'bootstrap.js')}"></script>
</body>
</html>
