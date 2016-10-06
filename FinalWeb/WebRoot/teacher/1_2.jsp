<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>roll book</title>
    <!-- css 文件 -->
    <link rel="stylesheet" href="mainmenu/css/foundation.min.css">
    <!-- jQuery 库 -->
    <script src="mainmenu/js/vendor/jquery.js"></script>
    <!-- JavaScript 文件 -->
    <script src="mainmenu/js/foundation.min.js"></script>
    <!-- modernizr 文件 -->
    <script src="mainmenu/js/vendor/modernizr.js"></script>
    <link rel="stylesheet" href="mainmenu/css/commonailty.css">
</head>
<style>
    .performance-icon div{float: left;text-align: center; width: 16.666%; margin:10px 0 0 0;}
    .performance-icon div:hover{background:skyblue;}
    .performance-icon div:hover a{color: #fff;}
    .information form{width: 100%; height: 250px; border-top:2px dashed skyblue;}
    @media (min-width: 40rem) and (max-width: 58rem) {
        .performance-icon a{ font-size: 14px;}
        .performance-table th,.performance-table td{ font-size: 14px;}

    }@media (max-width: 40rem) {
        .information button{ padding:10px;}
        .information form{width: 100%; height: 210px; border-top:2px dashed skyblue;}
        .performance-icon a{ font-size: 12px;}
        .performance-table th,.performance-table td{ font-size: 12px;}
    }
</style>
<body>
<header style="height: 100%;">
    <!-- 最外层div：页面布局 -->
    <div class="off-canvas-wrap" data-offcanvas>
        <!-- 内部元素: "工具栏" 内容 (图标, 链接, 描述内容等)-->
        <div class="inner-wrap">
            <nav class="tab-bar">
                <section class="left-small">
                    <a class="left-off-canvas-toggle menu-icon" href="#"><span></span></a>
                </section>
                <section class="middle tab-bar-section">
                    <h1 class="title">NEUSOFT</h1>
                </section>

            </nav>
            <!-- 滑动菜单 -->
            <aside class="left-off-canvas-menu">
                <ul class="off-canvas-list test">
                    <li><label><h5 style="color: #fff;">Neusoft师生互动系统</h5></label></li>
                    <li><a href="Teacher-index.html.html">教师互动</a></li>
                    <li><a href="student.html">学生互动</a></li>
                </ul>
            </aside>
            <nav class="top-bar" data-topbar data-options="is_hover: false">
                <ul class="title-area">
                    <li class="name">
                        <h1><a href="Teacher-index.html.html">教师互动系统</a></h1>
                    </li>
                    <!-- 小屏幕上折叠按钮: 去掉 .menu-icon 类，可以去除图标。
                     如果需要只显示图片，可以删除 "Menu" 文本 -->
                    <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
                </ul>

                 <section class="top-bar-section">
                    <ul class="left">
                        <li ><a href="Teacher-index.html">首页</a></li>
                        <li class="has-dropdown" ><a >个人主页</a>
                            <ul class="dropdown">
                                <li ><a href="index.jsp">个人主页</a></li>
                                <li class="active" ><a href="Teacher-Myforum.html">我的论坛</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown active">
                            <a href="#">考勤管理</a>
                            <ul class="dropdown">
                                <li ><a href="1_1.jsp">点名</a></li>
                                <li  class="active"><a href="1_2.jsp">签到</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown">
                            <a href="#">教学互动</a>
                            <ul class="dropdown">
                                <li><a href="2_1.jsp">提问</a></li>
                                <li><a href="2_2.jsp">论坛</a></li>
                                <li ><a href="2_1.jsp">查看活跃度</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown">
                            <a href="#">作业管理</a>
                            <ul class="dropdown">
                                <li><a href="3_1.jsp">下载作业</a></li>
                                <li ><a href="3_2.jsp">作业评分</a></li>
                            </ul>
                        </li><li class="has-dropdown">
                        <a href="#">测试管理</a>
                        <ul class="dropdown">
                            <li><a href="4_1.jsp">题库管理</a></li>
                            <li><a href="4_2.jsp">试卷管理</a></li>
                            <li ><a href="4_3.jsp">成绩管理</a></li>
                        </ul>
                    </li>
                        <li >
                            <a href="#">成绩分析</a>
                        </li>
                    </ul>
                </section>
            </nav>

            <!-- 主要内容 -->
            <section class="main-section"  id="center" style="background: url(mainmenu/img/bg.jpg);">
                <!--<div class="h1">
                     <h1>欢迎进入师生互动系统</h1>
                 </div>-->
                <div class="row">
                    <div class="large-12 columns">
                        <div class="row collapse prefix-round">
                            <div class="small-3 columns">
                                <a href="#" class="button prefix">搜索</a>
                            </div>
                            <div class="small-9 columns">
                                <input type="text" placeholder="Search">
                            </div>
                        </div>
                    </div>
                </div>
                <h1>The scholars' home.<br/>Colour your academic life</h1>
            </section>
                <div id="rollbook"  class="responsive" style="background: url(mainmenu/img/bg1.jpg); ">
            <div class="information" style="height: 380px;">
                <h4><img src="mainmenu/img/点名.png">签到查询</h4>
                <form >
                    <label for="num" >专业
                        <select id="num">
                            <option>网络工程</option>
                            <option>软件工程</option>
                            <option>电子信息工程</option>
                            <option>日语</option>
                            <option>财务管理</option>
                            <option>电子商务</option>
                            <option>市场营销</option>
                            <option>物流管理</option>
                        </select>
                    </label>
                    <label for="num1" >班级
                        <select id="num1">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                        </select>
                    </label>
                    <label for="num2" >周期
                        <select id="num2">
                            <option>第1周</option>
                            <option>第2周</option>
                            <option>第3周</option>
                            <option>第4周</option>
                            <option>第5周</option>
                            <option>第6周</option>
                            <option>第7周</option>
                            <option>第8周</option>
                            <option>第9周</option>
                            <option>第10周</option>
                            <option>第11周</option>
                            <option>第12周</option>
                            <option>第13周</option>
                            <option>第14周</option>
                            <option>第15周</option>
                            <option>第16周</option>
                        </select>
                    </label>
                    <div class="performance-icon" style="border-top:2px dashed skyblue;  ">
                        <div><a><img src="mainmenu/img/修改.png">修改</a></div>
                        <div><a><img src="mainmenu/img/删除.png">删除</a></div>
                        <div><a><img src="mainmenu/img/导出.png">导出</a></div>
                        <div><a><img src="mainmenu/img/导入.png">导入</a></div>
                        <div><a><img src="mainmenu/img/查询.png">查询</a></div>
                        <div><a><img src="mainmenu/img/保存.png">保存</a></div>
                    </div>
                </form>
            </div>
                    <table class="row" >
                        <thead>
                        <tr >
                            <th>专业</th>
                            <th>班级</th>
                            <th >学号</th>
                            <th  >姓名</th>
                            <th >签到时间</th>
                        </tr>
                        </thead>
                        <tbody id="tbody">
                        <tr>
                            <td>网络工程</td>
                            <td>2班</td>
                            <td>John</td>
                            <td>142102202xx</td>
                            <td><a>查看签到时间</a></td>
                        </tr>
                        <tr>
                            <td>网络工程</td>
                            <td>2班</td>
                            <td>John</td>
                            <td>142102202xx</td>
                            <td><a>查看签到时间</a></td>
                        </tr>
                        <tr>
                            <td>网络工程</td>
                            <td>2班</td>
                            <td>John</td>
                            <td>142102202xx</td>
                            <td><a>查看签到时间</a></td>
                        </tr>
                        <tr>
                            <td>网络工程</td>
                            <td>2班</td>
                            <td>John</td>
                            <td>142102202xx</td>
                            <td><a>查看签到时间</a></td>
                        </tr>

                        <tr>
                            <td>网络工程</td>
                            <td>2班</td>
                            <td>John</td>
                            <td>142102202xx</td>
                            <td><a>查看签到时间</a></td>
                        </tr>
                        <tr>
                            <td>网络工程</td>
                            <td>2班</td>
                            <td>John</td>
                            <td>142102202xx</td>
                            <td><a>查看签到时间</a></td>
                        </tr>
                        <tr>
                            <td>网络工程</td>
                            <td>2班</td>
                            <td>John</td>
                            <td>142102202xx</td>
                            <td><a>查看签到时间</a></td>
                        </tr>
                        <tr>
                            <td>网络工程</td>
                            <td>2班</td>
                            <td>John</td>
                            <td>142102202xx</td>
                            <td><a>查看签到时间</a></td>
                        </tr>
                        </tbody>
                    </table>
                    <br/>
                    <div class="pagination-centered">
                        <ul class="pagination">
                            <li class="arrow"><a href="#">«</a></li>
                            <li class="current"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li class="arrow"><a href="#">»</a></li>
                        </ul>
                    </div>
                </div>

            <footer id="footer">
                <ul >
                    <li>免责申明</li>
                    <li>用户反馈</li>
                    <li>关于我们</li>
                    <li>联系邮箱：123456789@qq.com</li>
                    <li class="clear"></li>
                </ul>
            </footer>


            <!-- 关闭菜单 -->
            <a class="exit-off-canvas"></a>

        </div> <!-- 结束内部内容 -->
    </div> <!-- 结束滑动菜单 -->

    <!-- 初始化 Foundation JS -->
    <script>
        $(document).ready(function() {
            $(document).foundation();
        })
    </script>

</header>
</body>
</html>