<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>forum-content</title>
    <!-- css 文件 -->
    <link rel="stylesheet" href="mainmenu/css/foundation.min.css">
    <!-- jQuery 库 -->
    <script src="mainmenu/js/vendor/jquery.js"></script>
    <!-- JavaScript 文件 -->
    <script src="mainmenu/js/foundation.min.js"></script>
    <!-- modernizr 文件 -->
    <script src="mainmenu/js/vendor/modernizr.js"></script>
    <link rel="stylesheet" href="mainmenu/css/commonailty.css">
    <link rel="stylesheet" href="mainmenu/css/forum.css">

</head>
<body>
<div style="height: 100%;">
    <!-- 最外层div：页面布局 -->
    <div class="off-canvas-wrap" data-offcanvas>
    <!-- 内部元素: "工具栏" 内容 (图标, 链接, 描述内容等)-->
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
                <li><a href="#">学生互动系统</a></li>
                <li><a href="#">退出登陆</a></li>
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
                                <li ><a href="teacher/1_1.jsp">点名</a></li>
                                <li  class="active"><a href="teacher/1_2.jsp">签到</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown">
                            <a href="#">教学互动</a>
                            <ul class="dropdown">
                                <li><a href="teacher/2_1.jsp">提问</a></li>
                                <li><a href="teacher/2_2.jsp">论坛</a></li>
                                <li ><a href="teacher/2_1.jsp">查看活跃度</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown">
                            <a href="#">作业管理</a>
                            <ul class="dropdown">
                                <li><a href="teacher/3_1.jsp">下载作业</a></li>
                                <li ><a href="teacher/3_2.jsp">作业评分</a></li>
                            </ul>
                        </li><li class="has-dropdown">
                        <a href="#">测试管理</a>
                        <ul class="dropdown">
                            <li><a href="4_1.jsp">题库管理</a></li>
                            <li><a href="4_2.jsp">试卷管理</a></li>
                            <li ><a href="teacher/4_3.jsp">成绩管理</a></li>
                        </ul>
                    </li>
                        <li >
                            <a href="#">成绩分析</a>
                        </li>
                    </ul>
                </section>
            </nav>
            <section class="wrap-bg" style="height:650px; width: 100%; background:linear-gradient(#000 0%, #bfe1e2 90%);">
            <div class="wrap">
                <div class="cube">
                    <div class="out-front"><img src="mainmenu/img/xy.jpg" ></div>
                    <div class="out-back"><img src="mainmenu/img/xy1.jpg"></div>
                    <div class="out-left"><img src="mainmenu/img/xy2.jpg"></div>
                    <div class="out-right"><img src="mainmenu/img/xy3.gif"></div>
                    <div class="out-top"><img src="mainmenu/img/lb1.jpg"></div>
                    <div class="out-bottom"><img src="mainmenu/img/lb2.jpg"></div>

                    <span class="in-front">东软学院</span>
                    <span class="in-back">自立自强</span>
                    <span class="in-left">自强不息</span>
                    <span class="in-right">团结互助</span>
                    <span class="in-top">东软学院</span>
                    <span class="in-bottom">东软学院</span>
                </div>
            </div>
            <h1 style=" margin: 0; padding: 35% 0 0 0;text-shadow: 3px 3px 10px yellow; text-align:center;  color: #fff; font-weight: bold; font-size: 60px;">The scholars' home.<br/>Colour your academic life</h1>
        </section>
            <!--论坛-->
            <div style="background: url(mainmenu/img/bg1.jpg); background-size: 100%; height:auto;padding: 2% 0 0 0;">
                <div class="forum">
                    <div class="release">
                          <img src="mainmenu/img/lt1.png" >
                          <textarea name="a" style="">请输入帖子内容</textarea>
                          <ul>
                              <li ><a style="color: #000;"><img src="mainmenu/img/表情.png">表情</a> </li>
                              <li><a><img src="mainmenu/img/图片.png">图片 </a></li>
                              <li><a><img src="mainmenu/img/视频.png">视频 </a></li>
                              <li><a><img src="mainmenu/img/话题.png">话题</a></li>
                              <li><a><img src="mainmenu/img/热门.png">热门 </a></li>
                          </ul>
                          <div class="release1"><a  href="#">发布</a></div>
                    </div>
                    <!--个人资料-->
                      <div class="data">
                          <img class="data-bgimg" src="mainmenu/img/bg.jpg">
                          <div class="data-tx"><img href="Teacher-Myforum.html" style="border-radius: 50px;" src="mainmenu/img/txiang.jpg"></div>
                          <div >
                              <ul style="width: 75%">
                                  <li><a href="Teacher-Myforum.html">关注<span>124</span></a></li>
                                  <li><a href="Teacher-Myforum.html">粉丝<span>43</span></a></li>
                                  <li><a href="Teacher-Myforum.html">论坛<span>78</span></a></li>
                              </ul>
                          </div>
                      </div>
                    <!--论坛-->
                        <div class="Forum-seeforum" >
                                <div class="see" >
                                    <p >看帖</p>
                                </div>
                                <div class="tiezi">
                                    <div >
                                        <p><a href="Teacher-forum-content.html"><img src="mainmenu/img/置顶%20(1).png">
                                        科技为生活 百度安全将人工智能应用于全网安全防护透明的小雪球</a>
                                        <span style="float: right;">16-10-6</span>
                                        </p>
                                    </div>
                                    <div >
                                        <p><a href="Teacher-forum-content.html"><img src="mainmenu/img/置顶%20(1).png">
                                            十一长假来临 百度手机助手拯救你的美图朋友圈
                                        </a>
                                            <span style="float: right;">16-10-6</span>
                                        </p>
                                    </div>
                                    <div >
                                        <p><a href="Teacher-forum-content.html"><img src="mainmenu/img/置顶%20(1).png">
                                            今天，我们收到了东软学霸很多梦想
                                        </a>
                                            <span style="float: right;">16-10-6</span>
                                        </p>
                                    </div>
                                    <div >
                                        <p><a href="Teacher-forum-content.html"><img src="mainmenu/img/置顶%20(1).png">
                                            杨洋约你抓羊羊：百度地图十一集萌宠赢汽车
                                        </a>
                                            <span style="float: right;">16-10-6</span>
                                        </p>
                                    </div>
                                    <div >
                                        <p><a href="Teacher-forum-content.html"><img src="mainmenu/img/置顶%20(1).png">
                                            黄金周首日，百度地图大数据还原上海出行状况
                                        </a>
                                            <span style="float: right;">16-10-6</span>
                                        </p>
                                    </div>
                                    <div >
                                        <p><a href="Teacher-forum-content.html"><img src="mainmenu/img/置顶%20(1).png">
                                            科技为生活 百度安全将人工智能应用于全网安全防护透明的小雪球</a>
                                            <span style="float: right;">16-10-6</span>
                                        </p>
                                </div>
                                <div >
                                    <p><a href="Teacher-forum-content.html"><img src="mainmenu/img/置顶%20(1).png">
                                        科技为生活 百度安全将人工智能应用于全网安全防护透明的小雪球</a>
                                        <span style="float: right;">16-10-6</span>
                                    </p>
                                </div>
                                <div>
                                    <p><a href="Teacher-forum-content.html"><img src="mainmenu/img/置顶%20(1).png">
                                        科技为生活 百度安全将人工智能应用于全网安全防护透明的小雪球</a>
                                        <span style="float: right;">16-10-6</span>
                                    </p>
                                </div>
                                <div>
                                    <p><a href="Teacher-forum-content.html"><img src="mainmenu/img/置顶%20(1).png">
                                        科技为生活 百度安全将人工智能应用于全网安全防护透明的小雪球</a>
                                        <span style="float: right;">16-10-6</span>
                                    </p>
                                </div>
                                <div>
                                    <p><a href="Teacher-forum-content.html"><img src="mainmenu/img/置顶%20(1).png">
                                        科技为生活 百度安全将人工智能应用于全网安全防护透明的小雪球</a>
                                        <span style="float: right;">16-10-6</span>
                                    </p>
                                </div>
                                <div>
                                    <p><a href="Teacher-forum-content.html"><img src="mainmenu/img/置顶%20(1).png">
                                        科技为生活 百度安全将人工智能应用于全网安全防护透明的小雪球</a>
                                        <span style="float: right;">16-10-6</span>
                                    </p>
                                </div>
                                <div >
                                    <p><a href="Teacher-forum-content.html"><img src="mainmenu/img/置顶%20(1).png">
                                        科技为生活 百度安全将人工智能应用于全网安全防护透明的小雪球</a>
                                        <span style="float: right;">16-10-6</span>
                                    </p>
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
                        </div>
                   </div>
            </div>
            <!--底部-->
            <footer id="footer">
            <ul >
                <li>免责申明</li>
                <li>用户反馈</li>
                <li>关于我们</li>
                <li>联系邮箱：123456789@qq.com</li>
                <li class="clear"></li>
            </ul>
        </footer>
            <a class="exit-off-canvas"></a><!-- 关闭菜单 -->
    </div> <!-- 结束滑动菜单 -->

    <!-- 初始化 Foundation JS -->
    <script>
        $(document).ready(function() {
            $(document).foundation();
        })
    </script>
</div>
</header>
</body>
</html>
