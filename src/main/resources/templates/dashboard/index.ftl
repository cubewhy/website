<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>LunarCN Account | 仪表盘</title>
    <link href="https://cdn.staticfile.org/layui/2.9.6/css/layui.css" rel="stylesheet">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-black">LunarCN</div>
        <!-- 头部区域（可配合layui 已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <!-- 移动端显示 -->
            <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
                <i class="layui-icon layui-icon-spread-left"></i>
            </li>
            <li class="layui-nav-item layui-hide-xs"><a href="javascript:" onclick="switchTab('home')">Home</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="javascript:" onclick="switchTab('cape')">披风</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="javascript:">插件</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">nav groups</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">menu 11</a></dd>
                    <dd><a href="javascript:;">menu 22</a></dd>
                    <dd><a href="javascript:;">menu 33</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide layui-show-sm-inline-block">
                <a href="javascript:;">
                    <img src="//unpkg.com/outeres@0.0.10/img/layui/icon-v2.png" class="layui-nav-img">
                    ${user}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="/dashboard/logout">退出登录</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
                <a href="javascript:;">
                    <i class="layui-icon layui-icon-more-vertical"></i>
                </a>
            </li>
        </ul>
    </div>
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">menu group 1</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">menu 1</a></dd>
                        <dd><a href="javascript:;">menu 2</a></dd>
                        <dd><a href="javascript:;">menu 3</a></dd>
                        <dd><a href="javascript:;">the links</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">menu group 2</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">list 1</a></dd>
                        <dd><a href="javascript:;">list 2</a></dd>
                        <dd><a href="javascript:;">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="javascript:;">click menu item</a></li>
                <li class="layui-nav-item"><a href="javascript:;">the links</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容区域 -->
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        由向日葵CDN提供支持,打不死 (这是个玩笑,我们不卖CDN)
    </div>
</div>

<script src="https://cdn.staticfile.org/layui/2.9.6/layui.js"></script>
<script>
    function switchTab(name) {
        const xhttp = new XMLHttpRequest();
        let regDetectJs = /<script(.|\n)*?>(.|\n|\r\n)*?<\/script>/ig;
        xhttp.onload = function () {
            document.getElementsByClassName("layui-body")[0].innerHTML =
                this.responseText;
            var jsContained = this.responseText.match(regDetectJs);
            if (jsContained) {
                // 分段取出js正则
                var regGetJS = /<script(.|\n)*?>((.|\n|\r\n)*)?<\/script>/im;
                // 按顺序分段执行js
                const jsNums = jsContained.length;
                for (let i = 0; i < jsNums; i++) {
                    const jsSection = jsContained[i].match(regGetJS);
                    if (jsSection[2]) {
                        if (window.execScript) {
                            // 给IE的特殊待遇
                            window.execScript(jsSection[2]);
                        } else {
                            // 给其他大部分浏览器用的
                            window.eval(jsSection[2]);
                        }
                    }
                }
            }
        }
        xhttp.open("GET", "/dashboard/" + name);

        xhttp.send();
    }

    switchTab("home");

    layui.use(['element', 'layer', 'util'], function () {
        var element = layui.element;
        var layer = layui.layer;
        var util = layui.util;
        var $ = layui.$;

        //头部事件
        util.event('lay-header-event', {
            menuLeft: function (othis) { // 左侧菜单事件
                layer.msg('展开左侧菜单的操作', {icon: 0});
            },
            menuRight: function () {  // 右侧菜单事件
                layer.open({
                    type: 1,
                    title: '更多',
                    content: '<div style="padding: 15px;">处理右侧面板的操作</div>',
                    area: ['260px', '100%'],
                    offset: 'rt', // 右上角
                    anim: 'slideLeft', // 从右侧抽屉滑出
                    shadeClose: true,
                    scrollbar: false
                });
            }
        });
    });

</script>
</body>
</html>