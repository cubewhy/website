<html lang="en">
<head>
    <title>LunarCN Official</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <meta name="description" content="cubewhy,lunarcn,lunar全饰品,lunarclient,celestial,天体启动器">
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="/css/animate.min.css">
    <link type="text/css" rel="stylesheet" href="/css/style.css">
    <link type="text/css" rel="stylesheet" href="/css/fullpage.css"/>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="/js/fullpage.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#fullpage').fullpage({
                //options here
                autoScrolling: true,
                scrollHorizontally: true,
                navigation: true,
                navigationPosition: 'right',
                observer: true,
                credits: {enabled: true, label: 'Made with Love 🥰', position: 'right'},

                // TODO 在页面被用户打开之后再渲染动画
            });

            //methods
            $.fn.fullpage.setAllowScrolling(true);
        });
    </script>
</head>
<body style="overflow: hidden; height: 100%;">
<div id="fullpage" style="height: 100%; position: relative; touch-action: none; transform: translate3d(0px, 0px, 0px);">
    <div id="top" class="section" style="height: 966px;">
        <div class="main-field">
            <div class="logo animate__animated animate__backInUp">
                <img src="/images/cubewhy.png" alt="logo">
            </div>
            <a class="animate__animated animate__bounce">CubeWhy</a><br>
            <div>
                <a class="animate__animated animate__backInLeft" href="https://github.com/cubewhy">GitHub</a>
                <a class="animate__animated animate__backInRight"
                   href="https://space.bilibili.com/1106744676">Bilibili</a>
            </div>
        </div>
    </div>
    <div class="section" id="celestial" style="height: 966px;">
        <div class="main-field">
            <div class="project_logo animate__animated animate__backInUp">
                <img src="/favicon.ico" alt="celestial logo" style="width: 200px;height: 200px;">
            </div>
            <div class="project_name animate__animated animate__bounce">
                <h3>Celestial</h3>
            </div>
            <div class="animate__animated animate__backInDown">
                <a href="/lccn">访问网站</a>
            </div>
        </div>
    </div>
    <div class="section" id="cdn">
        <div class="main-field">
            <div class="project_logo animate__animated animate__backInUp">
                <img src="/images/attack/attack2.jpg" alt="CDN">
            </div>
            <div class="project_name animate__animated animate__bounce">
                <h3 class="rainbow-text" style="font-size: 35px">NUEE CDN</h3>
                <p>站长推荐, 1个t都打不死</p>
            </div>
            <div>
                <a href="https://cdn.nuee.cn">现在购买(将离开本站点)</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>