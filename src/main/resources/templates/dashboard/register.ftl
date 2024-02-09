<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LunarCN Account | 登录</title>
    <link href="https://cdn.staticfile.org/layui/2.9.6/css/layui.css" rel="stylesheet">
    <link href="/css/user.css" rel="stylesheet">
</head>
<body>
<div class="login-container">
    <form class="layui-form" action="/users/register" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input type="text" name="username" required lay-verify="required" placeholder="admin"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-block">
                <input type="email" name="email" required lay-verify="required" placeholder="me@lunarclient.top"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-block">
                <input type="password" id="pwd" name="password" required lay-verify="required" placeholder="cubewhy123"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">再来一遍</label>
            <div class="layui-input-block">
                <input type="password" lay-verify="required|confirmPassword" id="pwd-again" required lay-verify="required" placeholder="cubewhy123"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-bg-red" id="loginBtn" type="button">登录</button>
                <button class="layui-btn" lay-submit lay-filter="loginForm">立即提交</button>
            </div>
        </div>
    </form>
</div>

<script src="https://cdn.staticfile.org/layui/2.9.6/layui.js"></script>
<script>
    layui.use(['form', 'element'], function () {
        var form = layui.form
            , element = layui.element;

        form.verify({
            // 确认密码
            confirmPassword: function(value, item){
                console.log(value);
                let passwordValue = document.getElementById('pwd').value;
                console.log(passwordValue);
                if(value !== passwordValue){
                    return '两次密码输入不一致';
                }
            }
        });

        // 监听提交事件
        form.on('submit(loginForm)', function (data) {
            return true;
        });
    });

    layui.use(['layer'], function () {
        // 点击注册按钮
        document.getElementById('loginBtn').onclick = function () {
            window.location.href = '/users';
        };
        return false;
    });
</script>
</body>
</html>