<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blocked | LunarCN Official</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap');

        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #1a1a2e, #16213e);
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            overflow: hidden;
        }

        .container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 40px;
            max-width: 600px;
            text-align: center;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s ease-out;
        }

        h1 {
            font-size: 3em;
            margin-bottom: 20px;
            color: #ff6b6b;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        p {
            margin-bottom: 15px;
            line-height: 1.6;
        }

        a {
            color: #4ecdc4;
            text-decoration: none;
            transition: color 0.3s;
        }

        a:hover {
            color: #45b7aa;
        }

        .alert {
            background-color: rgba(255, 107, 107, 0.2);
            border-left: 4px solid #ff6b6b;
            padding: 10px;
            margin-top: 20px;
            text-align: left;
            animation: pulse 2s infinite;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes pulse {
            0% { box-shadow: 0 0 0 0 rgba(255, 107, 107, 0.4); }
            70% { box-shadow: 0 0 0 10px rgba(255, 107, 107, 0); }
            100% { box-shadow: 0 0 0 0 rgba(255, 107, 107, 0); }
        }

        .moon {
            position: absolute;
            top: 20px;
            left: 20px;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            background: #fff;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.5);
        }

        .star {
            position: absolute;
            background: #fff;
            border-radius: 50%;
            animation: twinkle 1s infinite alternate;
        }

        @keyframes twinkle {
            from { opacity: 0.5; }
            to { opacity: 1; }
        }
    </style>
</head>
<body>
    <div class="moon"></div>
    <div class="container">
        <h1>阻止访问!</h1>

        <p>你当前访问的域名不受信任!</p>
        <p>可能这个网站是钓鱼用的, 也可能是LUNARCN API或者帮助文档的镜像, 如果你在使用部分基于https的代理, 请停止使用它们</p>
        <p>如果你要查看镜像的帮助文档, 请<a href="/help">点这里</a></p>
        <p>如果该页面有误, 请自己重新编译服务端, 并在Configs.kt中加入宁的域名 (不建议)</p>

        <div class="alert">
            <h2>LunarCN是什么, 我为什么在这里</h2>
            <p>可能是有人错误地解析了他的域名, 请咨询网站所有者</p>
        </div>
    </div>

    <script>
        function createStar() {
            const star = document.createElement('div');
            star.classList.add('star');
            star.style.width = Math.random() * 3 + 'px';
            star.style.height = star.style.width;
            star.style.top = Math.random() * window.innerHeight + 'px';
            star.style.left = Math.random() * window.innerWidth + 'px';
            document.body.appendChild(star);
        }

        for (let i = 0; i < 50; i++) {
            createStar();
        }
    </script>
</body>
</html>
