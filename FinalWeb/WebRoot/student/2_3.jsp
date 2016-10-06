<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Neusoft 东软学生交互系统</title>
    <link rel="stylesheet" type="text/css" href="mainmenu/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="mainmenu/css/student.css">
    <link  rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" type="text/css" href="mainmenu/css/sinaFaceAndEffec.css" />

     <script type="text/javascript" src="mainmenu/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="mainmenu/js/jquery.min.js"></script>
    <script type="text/javascript" src="mainmenu/js/bootstrap.min.js"></script>
</head>
<body>
    <header>
        <nav class="navbar navbar-inverse" role="navigation">
            <!-- <nav class="navbar navbar-default" role="navigation"> -->
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Neusoft东软学生交互系统</a>
                </div>
                <div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="student.html">首页</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                考勤管理 <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">签到</a></li>
                                <li class="divider"></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                教学互动 <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">小组讨论</a></li>
                                <li><a href="quary.html">成绩查询</a></li>
                                <li><a href="2_3.jsp">老师提问</a></li>
                                <li><a href="#">论坛</a></li>
                                <li class="divider"></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                作业管理 <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">提交作业</a></li>
                                <li class="divider"></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                课程管理 <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="dati.html">在线答题</a></li>
                                <li><a href="onlinetest.html">课程选择</a></li>
                                <li class="divider"></li>
                            </ul>
                        </li>
                        <li><a href="indexstudy.html">智能学习系统</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div id="container">
        <div class="top-search">
            <ul class="bgimg">
                <li></li>
            </ul>
            <div class="search-area">
                <div class="search-box">
                    <h1>东软改变你，你改变世界</h1>
                    <div class="col-lg-12 search-target">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="输入你想搜索的内容">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">搜索</button>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>

         
             
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid"> 
    <div class="navbar-header">
        <a class="navbar-brand" text-align:center; href="#">向老师提出你的疑惑</a>
    </div>
    <div>
        <form class="navbar-form navbar-left" role="search">
            
        </form>
    </div>
    </div>
</nav>


        <div id="content" style="width: 700px; height: auto;margin-left:320px;margin-top:40px">
    <div class="wrap">
        <div class="comment">
            <div class="head-face">
                <img src="mainmenu/images/1.jpg" / >
                <p>我是飞机师</p>
            </div>
            <div class="content">
                <div class="cont-box">
                    <textarea class="text" placeholder="请输入..."></textarea>
                </div>
                <div class="tools-box">
                    <div class="operator-box-btn"><span class="face-icon"  >☺</span><span class="img-icon">▧</span></div>
                    <div class="submit-btn"><input type="button" onClick="out()"value="提交评论" /></div>
                </div>
            </div>
        </div>
        <br ><br>
        <div id="info-show">
            <ul></ul>
        </div>
    </div>
</div>

<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/sinaFaceAndEffec.js"></script>
<script type="text/javascript">
    // 绑定表情
    $('.face-icon').SinaEmotion($('.text'));
    // 测试本地解析
    function out() {
        var inputText = $('.text').val();
        $('#info-show ul').append(reply(AnalyticEmotion(inputText)));
    }
    
    var html;
    function reply(content){
        html  = '<li>';
        html += '<div class="head-face">';
        html += '<img src="mainmenu/images/1.jpg" / >';
        html += '</div>';
        html += '<div class="reply-cont">';
        html += '<p class="username">小小红色飞机</p>';
        html += '<p class="comment-body">'+content+'</p>';
        html += '<p class="comment-footer">2016年10月5日　回复　点赞0　转发0</p>';
        html += '</div>';
        html += '</li>';
        return html;
    }
</script>
