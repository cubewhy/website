<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LunarCN Account | 登录</title>
    <link href="https://cdn.staticfile.org/layui/2.9.6/css/layui.css" rel="stylesheet">
    <link href="/css/user.css" rel="stylesheet">

    <script>
        layui.use(['form', 'element'], function () {
            var form = layui.form
                , element = layui.element;
        })

        layui.use(['button', 'element'], function () {
            var button = layui.button
                , element = layui.element;
        });
    </script>

    <style>
        .demo-login-other .layui-icon {
            position: relative;
            display: inline-block;
            margin: 0 2px;
            top: 2px;
            font-size: 26px;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2 style="margin: 10px">LunarCN Official</h2>
    <form class="layui-form" action="/dashboard/login" method="post">
        <div class="demo-login-container">
            <div class="layui-form-item">
                <div class="layui-input-wrap">
                    <div class="layui-input-prefix">
                        <i class="layui-icon layui-icon-username"></i>
                    </div>
                    <input type="text" name="username" value="" lay-verify="required" placeholder="用户名"
                           lay-reqtext="请填写用户名" autocomplete="off" class="layui-input" lay-affix="clear">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-wrap">
                    <div class="layui-input-prefix">
                        <i class="layui-icon layui-icon-password"></i>
                    </div>
                    <input type="password" name="password" value="" lay-verify="required" placeholder="密   码"
                           lay-reqtext="请填写密码" autocomplete="off" class="layui-input" lay-affix="eye">
                </div>
            </div>
            <div class="layui-form-item">
                <input type="checkbox" name="remember" lay-skin="primary" title="记住密码">
                <a href="#forget" style="float: right; margin-top: 7px;">忘记密码？</a>
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="demo-login">登录</button>
            </div>
            <div class="layui-form-item demo-login-other">
                <label>社交账号登录</label>
                <span style="padding: 0 21px 0 6px;">
        <a href="javascript:;"><i class="layui-icon layui-icon-login-qq" style="color: #3492ed;"></i></a>
        <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat" style="color: #4daf29;"></i></a>
        <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo" style="color: #cf1900;"></i></a>
      </span>
                或 <a href="/dashboard/register">注册帐号</a>
            </div>
        </div>
    </form>
</div>

<script src="https://cdn.staticfile.org/layui/2.9.6/layui.js"></script>
<script>
    let msg = "<%= msgCode %>"
    switch (msg) {
        case "1":
            // 错误的用户名或密码!
            layui.use(function () {
                var layer = layui.layer;
                layer.msg("错误的用户名或密码", {icon: 5});
            });
            break;
        case "2":
            layui.use(function () {
                var layer = layui.layer;
                layer.msg("注册已关闭", {icon: 5});
            });
            break;
    }
    layui.use(['form', 'element'], function () {
        var form = layui.form
            , element = layui.element;

        // 监听提交事件
        form.on('submit(loginForm)', function (data) {
            // 提交表单
            return true;
        });
    });
</script>
</body>
</html>