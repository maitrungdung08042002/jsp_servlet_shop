<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/error.css">

    <link href="https://fonts.googleapis.com/css?family=Encode+Sans+Semi+Condensed:100,200,300,400" rel="stylesheet">
</head>

<body class="loading">
    <h1>500</h1>
    <h2>Unexpected Error <b>:(</b></h2>
    <div class="gears">
        <div class="gear one">
            <div class="bar"></div>
            <div class="bar"></div>
            <div class="bar"></div>
        </div>
        <div class="gear two">
            <div class="bar"></div>
            <div class="bar"></div>
            <div class="bar"></div>
        </div>
        <div class="gear three">
            <div class="bar"></div>
            <div class="bar"></div>
            <div class="bar"></div>
        </div>
    </div>
    <h1><span><a href="/jsp_servlet_shop/views/index.jsp">Back Homepage</a></span></h1>
    

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        $(function () {
            setTimeout(function () {
                $('body').removeClass('loading');
            }, 1000);
        });
    </script>
</body>

</html>