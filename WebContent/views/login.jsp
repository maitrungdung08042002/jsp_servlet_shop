<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
</head>

<body>
        <div class="bg-c">
            <div class="container">
                <div class="navbar">
                    <div class="logo">
                        <img src="../img/logo.png" width="125px" alt="">
                    </div>
                    <nav class="nav">
                        <ul>
                            <li><a href="/jsp_servlet_shop/views/index.jsp">Home</a></li>
                            <li><a href="">Product</a></li>
                            <li><a href="">About</a></li>
                            <li><a href="/jsp_servlet_shop/views/login.jsp">Account</a></li>
                            <li><a href="">Contact</a></li>
                        </ul>
                    </nav>
                    <img src="../img/cart.png" width="30px" alt="">
                </div> 
            </div>
        </div>
        <div class="account-page">
            <div class="container">
                <div class="row">
                    <div class="col-2">
                        <img src="../img/image1.png" width="100%" alt="">
                    </div>
                    <div class="col-2">
                        <div class="form-container">
                            <form action="/jsp_servlet/check-login" id="LoginForm" method="post">
                                <h1>Log In</h1>
                                <div class="form-control form-field" >
                                    <input class="form-input" id="username" type="text" placeholder=" " />
                                    <label class="form-label" for="">Username</label>
                                    <small id="message"></small>
                                    <span></span>
                                </div>
                                
                                <div class="form-control form-field">
                                    <input class="form-input" id="password" type="password" placeholder=" " />
                                    <label class="form-label" for="">Password</label>
                                    <small id="message"></small>
                                    <span></span>
                                </div>
                                <button class="btn-submit" type="submit">Login</button>
                                <div class="sign-up form-btn">Don't have an account? <a onclick="reg()">Sign Up</a></div>
                            </form>
                            <form action="" id="RegForm">
                                <h1>Sign Up</h1>
                                <div class="form-control form-field" >
                                    <input  class="form-input" id="username" type="text" placeholder=" " />
                                    <label class="form-label">Username</label>
                                    <small id="message"></small>
                                    <span></span>
                                </div>
                                <div class="form-control form-field">
                                    <input  class="form-input" id="email" type="text" placeholder=" " />
                                    <label class="form-label">Email</label>
                                    <small id="message"></small>
                                    <span></span>
                                </div>
                                <div class="form-control form-field">
                                    <input  class="form-input" id="password" type="password" placeholder=" " />
                                    <label class="form-label">Password</label>
                                    <small id="message"></small>
                                    <span></span>
                                </div>
                                <div class="form-control form-field">
                                    <input  class="form-input" id="confirm-password" type="password" placeholder=" " />
                                    <label class="form-label">Confirm Password</label>
                                    <small id="message"></small>
                                    <span></span>
                                </div>
                                <button class="btn-submit" type="submit">Sign Up</button>
                                <div class="form-btn sign-up">
                                    <span onclick="login()"><a>Back To Login</a></span>
                                    
                                </div>
                            </form>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col">
                        <h3>Dowload Our App</h3>
                        <p>Download app for android and ios mobile phone.</p>
                        <div class="app-logo">
                            <img src="../img/play-store.png" alt="">
                            <img src="../img/app-store.png" alt="">
                        </div>
                    </div>
                    <div class="footer-col-2">
                        <img src="../img/logo-white.png" alt="">
                        <p></p>
                    </div>
                    <div class="footer-col-2">
                        <h3>Useful link</h3>
                        <ul>
                            <li>Coupons</li>
                            <li>Blog Post</li>
                            <li>Return Policy</li>
                            <li>Join Affiliate</li>
                        </ul>
                    </div>
                    <div class="footer-col-2 footer-col-3">
                        <h3>Follow us</h3>
                        <ul>
                            <li><span><i class="fa fa-facebook" aria-hidden="true"></i> Facebook</span></li>
                            <li><span><i class="fa fa-instagram" aria-hidden="true"></i></span>Instagram</li>
                            <li><span><i class="fa fa-youtube-play" aria-hidden="true"></i></span>Youtube</li>
                            <li><span><i class="fa fa-github" aria-hidden="true"></i></span>Github</li>
                        </ul>
                    </div>
                    
                </div>
                <hr>
                <p class="copy-right">Copyright 2022 - Mai Trung Dũng</p>
            </div>
        </div>
</body>
<script src="../js/validate.js"></script>
<script src="../js/login.js"></script>
</html>