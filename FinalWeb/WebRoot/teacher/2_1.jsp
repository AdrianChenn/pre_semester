<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>comments-book</title>
        <!-- css 文件 -->
        <link rel="stylesheet" href="mainmenu/css/foundation.min.css">
        <!-- jQuery 库 -->
        <script src="mainmenu/js/vendor/jquery.js"></script>
        <!-- JavaScript 文件 -->
        <script src="mainmenu/js/foundation.min.js"></script>
        <!-- modernizr 文件 -->
        <script src="mainmenu/js/vendor/modernizr.js"></script>
        <link rel="stylesheet" href="mainmenu/css/commonailty.css">
         <link rel="stylesheet" href="mainmenu/css/comments-book.css">
    </head>
<body>
<header style="height: 100%;">
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
                            <li><a href="teacher/4_1.jsp">题库管理</a></li>
                            <li><a href="teacher/4_2.jsp">试卷管理</a></li>
                            <li ><a href="teacher/4_3.jsp">成绩管理</a></li>
                        </ul>
                    </li>
                        <li >
                            <a href="#">成绩分析</a>
                        </li>
                    </ul>
                </section>
            </nav>
        <!-- 主要内容-->
        <section class="main-section"  id="center" style="background: url(mainmenu/img/bg.jpg);">

            <div class="row">
                <div class="large-12 columns">
                    <div class="row collapse prefix-round">
                        <div class="small-9 columns">
                            <input type="text" placeholder="Search">
                        </div>
                        <div class="small-3 columns">
                            <a href="#" class="button prefix">搜索</a>
                        </div>

                    </div>
                </div>
            </div>
            <h1>The scholars' home.<br/>Colour your academic life</h1>
        </section>
            <!--留言板-->
        <div style="background: url(mainmenu/img/bg1.jpg); background-size: 100%; height:auto;padding: 2% 0 0 0;">
            <div class="comments" >
                <div class="book">
                    <div>
                        <img src="mainmenu/img/留言板.png" >
                    </div>
                    <textarea name="a">请留言</textarea>
                    <button >
                        <a  href="#" >发表</a>
                    </button>
                </div>
                <!--我的留言-->
                <div class="message">
                    <div style="height: auto; background:silver;margin: 3px 0 0 0; ">
                        <p>共<span > &nbsp;78 &nbsp;</span>条留言&nbsp;&nbsp;
                            <span >&nbsp;7&nbsp;</span>页</p>
                    </div>
                    <div class="comment-giveme">
                        <div class="student-comment">
                            <img src="mainmenu/img/txiang.jpg ">
                            <h5 style=""><a>李清照：</a>
                                <span href="#" >老师，第二次作业没有交，可以补交吗？</span></h5>
                            <div class="comment-bottom">
                                <p>2016-10-1</p>
                                <p><a href="#">删除</a></p>
                                <p id="huifu2"><a>回复</a></p>
                            </div>
                            <div style="height: auto; width:100%;display: none; " id="huifu-2">
                                <textarea name="a">请回复</textarea>
                                <button >
                                <a href="#" style="color: #fff;">发表</a></button>
                            </div>
                        </div>

                        <div class="student-comment">
                            <img src="mainmenu/img/txiang.jpg ">
                            <h5 style=""><a>李清照：</a>
                                <span href="#" >老师，第二次作业没有交，可以补交吗？</span></h5>
                            <div class="comment-bottom">
                                <p>2016-10-1</p>
                                <p><a href="#">删除</a></p>
                                <p id="huifu"><a>回复</a></p>
                            </div>
                            <div style="height: auto; width:100%;display: none; " id="huifu1">
                                <textarea name="a">请回复</textarea>
                                <button >
                                    <a href="#" style="color: #fff;">发表</a></button>
                            </div>
                        </div>

                        <div class="student-comment">
                            <img src="mainmenu/img/txiang.jpg ">
                            <h5 style=""><a>李清照：</a>
                                <span href="#" >老师，第二次作业没有交，可以补交吗？</span></h5>
                            <div class="comment-bottom">
                                <p>2016-10-1</p>
                                <p><a href="#">删除</a></p>
                                <p id="huifu3"><a>回复</a></p>
                            </div>
                            <div style="height: auto; width:100%;display: none; " id="huifu-3">
                                <textarea name="a">请回复</textarea>
                                <button >
                                    <a href="#" style="color: #fff;">发表</a></button>
                            </div>
                        </div>

                        <div class="student-comment">
                            <img src="mainmenu/img/txiang.jpg ">
                            <h5 style=""><a>李清照：</a>
                                <span href="#" >老师，第二次作业没有交，可以补交吗？</span></h5>
                            <div class="comment-bottom">
                                <p>2016-10-1</p>
                                <p><a href="#">删除</a></p>
                                <p id="huifu4"><a>回复</a></p>
                            </div>
                            <div style="height: auto; width:100%;display: none; " id="huifu-4">
                                <textarea name="a">请回复</textarea>
                                <button >
                                    <a href="#" style="color: #fff;">发表</a></button>
                            </div>
                        </div>

                    </div>
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
        <!--底部
        <footer id="footer">
            <ul >
                <li>联系邮箱：123456789@qq.com</li>
            </ul>
        </footer>
        -->
        <a class="exit-off-canvas"></a><!-- 关闭菜单 -->
    </div> <!-- 结束内部内容 -->
    </div> <!-- 结束滑动菜单 -->

    <!-- 初始化 Foundation JS -->
    <script>
        $(document).ready(function() {
            $(document).foundation();
        })
        $(document).ready(function(){
            $("#huifu").click(function(){
                $("#huifu1").slideToggle("slow");
            });
        });
        $(document).ready(function(){
            $("#huifu2").click(function(){
                $("#huifu-2").slideToggle("slow");
            });
        });
        $(document).ready(function(){
            $("#huifu3").click(function(){
                $("#huifu-3").slideToggle("slow");
            });
        });
        $(document).ready(function(){
            $("#huifu4").click(function(){
                $("#huifu-4").slideToggle("slow");
            });
        });

    </script>

</header>
</body>
</html>