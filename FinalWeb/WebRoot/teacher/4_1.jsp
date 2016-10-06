<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>question bank</title>
    <!-- css 文件 -->
    <link rel="stylesheet" href="mainmenu/css/foundation.min.css">
    <!-- jQuery 库 -->
    <script src="mainmenu/js/vendor/jquery.js"></script>
    <!-- JavaScript 文件 -->
    <script src="mainmenu/js/foundation.min.js"></script>
    <!-- modernizr 文件 -->
    <script src="mainmenu/js/vendor/modernizr.js"></script>
    <link rel="stylesheet" href="mainmenu/css/commonailty.css">
    <link rel="stylesheet" href="mainmenu/css/Question-bank.css">
</head>
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
                    <li><label><h5 style="color: #fff;">Neusoft师生互动系统</h5>统</label></li>
                    <li><a href="#"> 我的空间</a></li>
                    <li><a href="#">退出登陆</a></li>
                </ul>

                </ul>
            </aside>
            <nav class="top-bar" data-topbar data-options="is_hover: false">
                <ul class="title-area">
                    <li class="name">
                        <h1><a href="Teacher-index.html">教师互动系统</a></h1>
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
                                <li ><a href="Theader-Personal%20homepage.html">个人主页</a></li>
                                <li ><a href="Teacher-Myforum.html">我的论坛</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown " >
                            <a href="#" >考勤管理</a>
                            <ul class="dropdown">
                                <li ><a href="1_1.jsp">点名</a></li>
                                <li ><a href="2_1.jsp">签到</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown">
                            <a href="#">教学互动</a>
                            <ul class="dropdown">
                                <li><a href="2_1.jsp">提问</a></li>
                                <li><a href="2_2.jsp">论坛</a></li>
                                <li><a href="#">查看活跃度</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown">
                            <a href="#">作业管理</a>
                            <ul class="dropdown">
                                <li><a href="#">下载作业</a></li>
                                <li><a href="#">作业评分</a></li>
                            </ul>
                        </li><li class="has-dropdown active">
                        <a href="#">测试管理</a>
                        <ul class="dropdown">
                            <li class="active"><a href="4_1.jsp">题库管理</a></li>
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

            <!--题库管理-->
            <div id="rollbook"  class="responsive" style="background: url(mainmenu/img/bg1.jpg); ">
                <div class="information">
                    <h4><img src="mainmenu/img/tushuguan.png">东软题库</h4>
                    <h5><a href="#"><img src="mainmenu/img/试题库.png">上传试题</a></h5>
                    <form >
                        <div class="large-12 columns" style="width: 43%; margin: 0 0 0 6px;">
                            <div class="row collapse prefix-round">
                                <div class="small-9 columns">
                                    <input type="text" placeholder="Search">
                                </div>
                                <div class="small-3 columns">
                                    <a href="#" class="button prefix">搜索</a>
                                </div>
                            </div>
                        </div>
                        <label for="num2" >年份
                            <select id="num2">
                                <option>2001</option>
                                <option>2002</option>
                                <option>2003</option>
                                <option>2004</option>
                                <option>2005</option>
                                <option>2006</option>
                                <option>2007</option>
                                <option>2008</option>
                                <option>2009</option>
                                <option>2010</option>
                                <option>2011</option>
                                <option>2012</option>
                                <option>2013</option>
                                <option>2014</option>
                                <option>2015</option>
                                <option>2016</option>
                                <option>全部</option>
                            </select>
                        </label>
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
                        <label for="num1" >年级
                            <select id="num1">
                                <option>大一</option>
                                <option>大二</option>
                                <option>大三</option>
                                <option>大四</option>
                                <option>全部</option>

                            </select>
                        </label>

                    </form>
                </div>
                <!--题库-->
                    <div class="questionbox"  >
                        <div class="question">
                            <h6><img src="mainmenu/img/试题.png">2016年大二网络工程java基础试题
                            <div class="icon-delete" >
                                <div><a><img src="mainmenu/img/修改.png">编辑</a></div>
                                <div><a><img src="mainmenu/img/删除.png">删除</a></div>
                            </div>
                            </h6>
                            <div class="describe" >
                                <p>资源描述 ：<span>Jvav基础，检测基础是否牢固</span></p>
                                <p>所属类别 ：<span>大学理工类</span></p>
                            </div>
                            <div class="icon">
                                 <div><a><img src="mainmenu/img/时间.png">2015-9-12</a></div>
                                <div><a><img src="mainmenu/img/内存.png">2MB</a></div>
                                <div><a><img src="mainmenu/img/下载.png">本地下载</a></div>
                            </div>
                        </div>
                        <div class="question">
                            <h6><img src="mainmenu/img/试题.png">2016年大二网络工程java基础试题
                                <div class="icon-delete" >
                                    <div><a><img src="mainmenu/img/修改.png">编辑</a></div>
                                    <div><a><img src="mainmenu/img/删除.png">删除</a></div>
                                </div>
                            </h6>
                            <div class="describe" >
                                <p>资源描述 ：<span>Jvav基础，检测基础是否牢固</span></p>
                                <p>所属类别 ：<span>大学理工类</span></p>
                            </div>
                            <div class="icon">
                                <div><a><img src="mainmenu/img/时间.png">2015-9-12</a></div>
                                <div><a><img src="mainmenu/img/内存.png">2MB</a></div>
                                <div><a><img src="mainmenu/img/下载.png">本地下载</a></div>
                            </div>
                        </div>
                        <div class="question">
                            <h6><img src="mainmenu/img/试题.png">2016年大二网络工程java基础试题
                                <div class="icon-delete" >
                                    <div><a><img src="mainmenu/img/修改.png">编辑</a></div>
                                    <div><a><img src="mainmenu/img/删除.png">删除</a></div>
                                </div>
                            </h6>
                            <div class="describe" >
                                <p>资源描述 ：<span>Jvav基础，检测基础是否牢固</span></p>
                                <p>所属类别 ：<span>大学理工类</span></p>
                            </div>
                            <div class="icon">
                                <div><a><img src="mainmenu/img/时间.png">2015-9-12</a></div>
                                <div><a><img src="mainmenu/img/内存.png">2MB</a></div>
                                <div><a><img src="mainmenu/img/下载.png">本地下载</a></div>
                            </div>
                        </div>
                        <div class="question">
                            <h6><img src="mainmenu/img/试题.png">2016年大二网络工程java基础试题
                                <div class="icon-delete" >
                                    <div><a><img src="mainmenu/img/修改.png">编辑</a></div>
                                    <div><a><img src="mainmenu/img/删除.png">删除</a></div>
                                </div>
                            </h6>
                            <div class="describe" >
                                <p>资源描述 ：<span>Jvav基础，检测基础是否牢固</span></p>
                                <p>所属类别 ：<span>大学理工类</span></p>
                            </div>
                            <div class="icon">
                                <div><a><img src="mainmenu/img/时间.png">2015-9-12</a></div>
                                <div><a><img src="mainmenu/img/内存.png">2MB</a></div>
                                <div><a><img src="mainmenu/img/下载.png">本地下载</a></div>
                            </div>
                        </div>
                        <div class="question">
                            <h6><img src="mainmenu/img/试题.png">2016年大二网络工程java基础试题
                                <div class="icon-delete" >
                                    <div><a><img src="mainmenu/img/修改.png">编辑</a></div>
                                    <div><a><img src="mainmenu/img/删除.png">删除</a></div>
                                </div>
                            </h6>
                            <div class="describe" >
                                <p>资源描述 ：<span>Jvav基础，检测基础是否牢固</span></p>
                                <p>所属类别 ：<span>大学理工类</span></p>
                            </div>
                            <div class="icon">
                                <div><a><img src="mainmenu/img/时间.png">2015-9-12</a></div>
                                <div><a><img src="mainmenu/img/内存.png">2MB</a></div>
                                <div><a><img src="mainmenu/img/下载.png">本地下载</a></div>
                            </div>
                        </div>
                        <div class="question">
                            <h6><img src="mainmenu/img/试题.png">2016年大二网络工程java基础试题
                                <div class="icon-delete" >
                                    <div><a><img src="mainmenu/img/修改.png">编辑</a></div>
                                    <div><a><img src="mainmenu/img/删除.png">删除</a></div>
                                </div>
                            </h6>
                            <div class="describe" >
                                <p>资源描述 ：<span>Jvav基础，检测基础是否牢固</span></p>
                                <p>所属类别 ：<span>大学理工类</span></p>
                            </div>
                            <div class="icon">
                                <div><a><img src="mainmenu/img/时间.png">2015-9-12</a></div>
                                <div><a><img src="mainmenu/img/内存.png">2MB</a></div>
                                <div><a><img src="mainmenu/img/下载.png">本地下载</a></div>
                            </div>
                        </div>
                        <div class="question">
                            <h6><img src="mainmenu/img/试题.png">2016年大二网络工程java基础试题
                                <div class="icon-delete" >
                                    <div><a><img src="mainmenu/img/修改.png">编辑</a></div>
                                    <div><a><img src="mainmenu/img/删除.png">删除</a></div>
                                </div>
                            </h6>
                            <div class="describe" >
                                <p>资源描述 ：<span>Jvav基础，检测基础是否牢固</span></p>
                                <p>所属类别 ：<span>大学理工类</span></p>
                            </div>
                            <div class="icon">
                                <div><a><img src="mainmenu/img/时间.png">2015-9-12</a></div>
                                <div><a><img src="mainmenu/img/内存.png">2MB</a></div>
                                <div><a><img src="mainmenu/img/下载.png">本地下载</a></div>
                            </div>
                        </div>
                        <div class="question">
                            <h6><img src="mainmenu/img/试题.png">2016年大二网络工程java基础试题
                                <div class="icon-delete" >
                                    <div><a><img src="mainmenu/img/修改.png">编辑</a></div>
                                    <div><a><img src="mainmenu/img/删除.png">删除</a></div>
                                </div>
                            </h6>
                            <div class="describe" >
                                <p>资源描述 ：<span>Jvav基础，检测基础是否牢固</span></p>
                                <p>所属类别 ：<span>大学理工类</span></p>
                            </div>
                            <div class="icon">
                                <div><a><img src="mainmenu/img/时间.png">2015-9-12</a></div>
                                <div><a><img src="mainmenu/img/内存.png">2MB</a></div>
                                <div><a><img src="mainmenu/img/下载.png">本地下载</a></div>
                            </div>
                        </div>
                        <div class="question">
                            <h6><img src="mainmenu/img/试题.png">2016年大二网络工程java基础试题
                                <div class="icon-delete" >
                                    <div><a><img src="mainmenu/img/修改.png">编辑</a></div>
                                    <div><a><img src="mainmenu/img/删除.png">删除</a></div>
                                </div>
                            </h6>
                            <div class="describe" >
                                <p>资源描述 ：<span>Jvav基础，检测基础是否牢固</span></p>
                                <p>所属类别 ：<span>大学理工类</span></p>
                            </div>
                            <div class="icon">
                                <div><a><img src="mainmenu/img/时间.png">2015-9-12</a></div>
                                <div><a><img src="mainmenu/img/内存.png">2MB</a></div>
                                <div><a><img src="mainmenu/img/下载.png">本地下载</a></div>
                            </div>
                        </div>
                    </div>
                <!--分页-->
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

            <!--底部-->
            <footer id="footer">
                <ul >
                    <li>联系邮箱：123456789@qq.com</li>
                </ul>
            </footer>

            <a class="exit-off-canvas"></a><!-- 关闭菜单 -->
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
