<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Neusoft 东软学生交互系统</title>
	<link rel="stylesheet" type="text/css" href="student/mainmenu/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="student/mainmenu/css/student.css">
	<script type="text/javascript" src="student/mainmenu/js/jquery.min.js"></script>
	<script type="text/javascript" src="student/mainmenu/js/bootstrap.min.js"></script>
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
		<div class="content-1">
			<div class="grid">
				<figure class="effect-julia">
					<img src="images/21.jpg" alt="img21">
					<figcaption>
						<h2>GuangDong<span>Neusoft</span></h2>
						<div>
							<p>There is no end to learning</p>
							<p>There is no end to learning</p>
							<p>There is no end to learning</p>
						</div>
						<a href="#/index2.html#">View more</a>
					</figcaption>           
				</figure>
				<figure class="effect-julia">
					<img src="images/22.jpg" alt="img22">
					<figcaption>
						<h2>GuangDong <span>Neusoft</span></h2>
						<div>
							<p>There is no end to learning</p>
							<p>There is no end to learning</p>
							<p>There is no end to learning</p>
						</div>
						<a href="#/index2.html#">View more</a>
					</figcaption>           
				</figure>
			</div>
			<div class="grid">
				<figure class="effect-hera">
					<img src="images/17.jpg" alt="img17">
					<figcaption>
						<h2>Neu <span>soft</span></h2>
						<p>
							<a href="#/index2.html#"><i class="fa fa-fw fa-file-pdf-o"></i></a>
							<a href="#/index2.html#"><i class="fa fa-fw fa-file-image-o"></i></a>
							<a href="#/index2.html#"><i class="fa fa-fw fa-file-archive-o"></i></a>
							<a href="#/index2.html#"><i class="fa fa-fw fa-file-code-o"></i></a>
						</p>
					</figcaption>           
				</figure>
				<figure class="effect-hera">
					<img src="images/25.jpg" alt="img25">
					<figcaption>
						<h2>Neu <span>Soft</span></h2>
						<p>
							<a href="#/index2.html#"><i class="fa fa-fw fa-file-pdf-o"></i></a>
							<a href="#/index2.html#"><i class="fa fa-fw fa-file-image-o"></i></a>
							<a href="#/index2.html#"><i class="fa fa-fw fa-file-archive-o"></i></a>
							<a href="#/index2.html#"><i class="fa fa-fw fa-file-code-o"></i></a>
						</p>
					</figcaption>           
				</figure>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	
</body>
</html>
