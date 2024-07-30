<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="赞助LunarCN项目,LunarCN 客户端"/>
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <title>Donate us | LunarCN Official</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #6C5CE7;
            --secondary-color: #00CECE;
            --background-color: #0F0F1E;
            --text-color: #FFFFFF;
            --card-bg: #1E1E30;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
            line-height: 1.6;
            overflow-x: hidden;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 60px 20px;
        }

        h1, h2 {
            text-align: center;
            margin-bottom: 30px;
            position: relative;
        }

        h1::after, h2::after {
            content: '';
            position: absolute;
            width: 60px;
            height: 3px;
            background: var(--secondary-color);
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            transition: width 0.3s ease;
        }

        h1:hover::after, h2:hover::after {
            width: 120px;
        }

        p {
            margin-bottom: 20px;
            text-align: center;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .donate-options {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-top: 50px;
        }

        .donate-option {
            background-color: var(--card-bg);
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            transition: all 0.3s ease;
            flex: 1;
            max-width: 300px;
        }

        .donate-option:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
        }

        .donate-option h3 {
            color: var(--secondary-color);
            margin-bottom: 20px;
        }

        .pay {
            width: 100%;
            max-width: 200px;
            height: auto;
            border-radius: 10px;
            transition: transform 0.3s ease;
        }

        .pay:hover {
            transform: scale(1.05);
        }

        .note {
            background-color: var(--secondary-color);
            color: var(--background-color);
            padding: 15px;
            border-radius: 10px;
            margin-top: 50px;
            text-align: center;
            position: relative;
            overflow: hidden;
            font-weight: bold;
        }

        .note::before {
            content: '!';
            position: absolute;
            font-size: 100px;
            opacity: 0.1;
            top: 50%;
            left: 20px;
            transform: translateY(-50%);
        }

        a {
            color: var(--secondary-color);
            text-decoration: none;
            position: relative;
        }

        a::after {
            content: '';
            position: absolute;
            width: 100%;
            height: 2px;
            bottom: -2px;
            left: 0;
            background-color: var(--secondary-color);
            transform: scaleX(0);
            transition: transform 0.3s ease;
        }

        a:hover::after {
            transform: scaleX(1);
        }

        .reward-info {
            margin-top: 60px;
            text-align: center;
            padding: 30px;
            background-color: var(--card-bg);
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .reward-info h2 {
            margin-bottom: 20px;
        }

        .reward-info p {
            margin-bottom: 0;
        }
.donate-option {
            position: relative;
            overflow: hidden;
        }

        .pay-wrapper {
            position: relative;
            overflow: hidden;
        }

        .pay {
            transition: filter 0.3s ease;
        }

        .scan-line {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 2px;
            background-color: var(--secondary-color);
            transform: translateY(-100%);
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .donate-option:hover .scan-line {
            animation: scan 1.5s linear infinite;
            opacity: 1;
        }

        .donate-option:hover .pay {
            filter: brightness(1.2);
        }

        @keyframes scan {
            0% {
                transform: translateY(-100%);
            }
            100% {
                transform: translateY(200px);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>赞助我们</h1>
        <p>Only Chinese yuan is accepted. If you really want to support us, you can give us a star on GitHub.</p>
        
        <h2>赞助开发者</h2>
        <p>LunarCN一直都是免费开源的，未提供过任何收费服务，请赞助来支持dev</p>
        
        <div class="donate-options">
            <div class="donate-option">
                <h3>支付宝</h3>
                <div class="pay-wrapper">
                    <img src="/images/pay-zfb.jpg" alt="donate with zfb" class="pay">
                    <div class="scan-line"></div>
                </div>
            </div>
            <div class="donate-option">
                <h3>微信</h3>
                <div class="pay-wrapper">
                    <img src="/images/pay-wx.png" alt="donate with wechat" class="pay">
                    <div class="scan-line"></div>
                </div>
            </div>
        </div>
        <div class="note">
            微信容易被封，建议使用支付宝赞助
        </div>

        <div class="reward-info">
            <h2>领取赞助奖励(仅赞助dev)</h2>
            <p>添加QQ 1076124626或在<a href="https://discord.lunarclient.top">LunarCN Discord</a>中开票，然后发送你的支付记录，看到之后会拉你进群/添加身份组</p>
        </div>
    </div>
    <script>
        document.querySelectorAll('.donate-option').forEach(option => {
            option.addEventListener('mouseenter', () => {
                const scanLine = option.querySelector('.scan-line');
                scanLine.style.animation = 'none';
                setTimeout(() => {
                    scanLine.style.animation = 'scan 1.5s linear infinite';
                }, 10);
            });
        });
    </script>
</body>
</html>
