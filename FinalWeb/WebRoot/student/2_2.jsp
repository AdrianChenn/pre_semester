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
    <link href="mainmenu/css/jquery.searchableSelect.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="mainmenu/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="mainmenu/css/student.css">
    
    <script type="text/javascript" src="mainmenu/js/jquery.min.js"></script>
    <script type="text/javascript" src="mainmenu/js/bootstrap.min.js"></script>
    <script src="mainmenu/js/jquery-1.11.1.min.js"></script>
    <script src="mainmenu/js/jquery.searchableSelect.js"></script>
    <script src="mainmenu/js/echarts.min.js"></script>
         
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
                                <li><a href="2_2.jsp">成绩查询</a></li>
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
        <a class="navbar-brand" href="#">成绩查询</a>
    </div>
    </div>
</nav>
<center>
    <h5>请选择学年</h5>
   <select>
      <option value="b">第一学期</option>
      <option value="c">第二学期</option>
      <option value="three">第三学期</option>
      <option value="fore">第四学期</option>
    </select>

     
<table class="table"  text-align:center border="3" >
<br ><br >
  <thead>
    <tr>
      <th>学号</th>
      <th>姓名</th>
      <th>班别</th>
      <th>出勤率</th>
      <th>总评成绩</th>
      <th>课程</th>
      <th>任课老师</th>
    </tr>
  </thead>
  <tbody>
    <tr class="active">
      <td>1</td>
      <td>2</td>
      <td>3</td>
      <td>4</td>
      <td>5</td>
      <td>6</td>
      <td>7</td>
    </tr>
    <tr class="success">
      <td>1</td>
      <td>2</td>
      <td>3</td>
      <td>4</td>
      <td>5</td>
      <td>6</td>
      <td>7</td>
    </tr>
    <tr class="warning">
      <td>1</td>
      <td>2</td>
      <td>3</td>
      <td>4</td>
      <td>5</td>
      <td>6</td>
      <td>7</td>
    </tr>
    <tr class="danger">
      <td>1</td>
      <td>2</td>
      <td>3</td>
      <td>4</td>
      <td>5</td>
      <td>6</td>
      <td>7</td>
    </tr>
  </tbody>
</table>
    </center>
    <center>
    <script>
        $(function(){
            $('select').searchableSelect();
        });
    </script>

                   <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '您的成绩'
            },
            tooltip: {},
            legend: {
                data:['分数']
            },
            xAxis: {
                data: ["java程序设计","jsp开发","大学英语","大学物理","计算机网络","离散数学"]
            },
            yAxis: {},
            series: [{
                name: '分数',
                type: 'bar',
                data: [62, 88, 79, 77, 80, 60]
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
    </center>

</body>
</html>
