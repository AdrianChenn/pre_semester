<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Login and Registration Form with HTML5 and CSS3</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="stylesheet" href="student/mainmenu/css/jquery-labelauty.css">
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="student/mainmenu/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="student/mainmenu/css/style.css" />
		<link rel="stylesheet" type="text/css" href="student/mainmenu/css/animate-custom.css" />
        <style>
                 ul { list-style-type: none;}
                 li { display: inline-block;}
                 li { margin: 10px 0;}
                 input.labelauty + label { font: 12px "Microsoft Yahei";}
        </style>
    </head>
    <body>
        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
                
                <span class="right">
                    <a href=" ">
                        <strong>Draw Back</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
            <header>
                <h1>广东东软学院<span>教学交互系统 </span></h1>
				<nav class="codrops-demos">
					<span>Neusoft<strong>  Instructional Interaction</strong> System</span>
				</nav>
            </header>
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="LoginServlet" autocomplete="on"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > 请输入用户名 </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="name"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> 请输入您密码 </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="password" /> 
                                </p>
                               
                                <p class="login button"> 
                                   <input type="submit" value="Login" />
								</p>
                                <p class="change_link">
									不是我们成员 ?
									<a href="#toregister" class="to_register">Join Us</a>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="mysuperscript.php" autocomplete="on"> 
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">您的用户名</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > 您的邮箱地址</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">您的密码 </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. 12345678"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">请确认你的密码 </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. 12345678"/>
                                </p>
                                 <p>
                                    <ul class="dowebok">
                                    <li><input type="radio" name="radio" data-labelauty="我是教师"></li>
                                    &nbsp&nbsp&nbsp
                                    <li><input type="radio" name="radio" data-labelauty="我是学生"></li>
                                </ul>
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
								</p>
                                <p class="change_link">  
									已是我们成员?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                            <script src="js/jquery-1.8.3.min.js"></script>
                            <script src="js/jquery-labelauty.js"></script>
                            <script>
                                   $(function(){
                                   $(':input').labelauty();
                                   });
                                   </script>


<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>
