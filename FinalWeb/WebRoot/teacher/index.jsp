<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>techer</title>
    <!-- css 文件 -->
    <link rel="stylesheet" href="teacher/mainmenu/css/foundation.min.css">
    <!-- jQuery 库 -->
    <script src="teacher/mainmenu/js/vendor/jquery.js"></script>
    <!-- JavaScript 文件 -->
    <script src="teacher/mainmenu/js/foundation.min.js"></script>
    <!-- modernizr 文件 -->
    <script src="teacher/mainmenu/js/vendor/modernizr.js"></script>
    <link rel="stylesheet" href="teacher/mainmenu/css/commonailty.css">
</head>
<body>
<header style="height: 100%;">
    <!-- 最外层div：页面布局 -->

    <div class="off-canvas-wrap" data-offcanvas>
        <!-- 内部元素: "工具栏" 内容 (图标, 链接, 描述内容等)-->
            <nav class="tab-bar">
                <section class="middle tab-bar-section">
                    <h1 class="title">NEUSOFT</h1>
                </section>
                <p style="float: right; margin:  10px 20px;">
                    <img src="teacher/mainmenu/img/话题.png"><a href="javascript:showDialog();">在线交流</a>
                </p>
            </nav>
            <nav class="top-bar" data-topbar data-options="is_hover: false">
                <ul class="title-area">
                    <li class="name">
                        <h1><a href="Teacher.html">教师互动系统</a></h1>
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
                                <li><a href="teacher/4_1.jsp">下载作业</a></li>
                                <li ><a href="teacher/4_2.jsp">作业评分</a></li>
                            </ul>
                        </li><li class="has-dropdown">
                        <a href="#">测试管理</a>
                        <ul class="dropdown">
                            <li><a href="teacher/5_1.jsp">题库管理</a></li>
                            <li><a href="teacher/5_2.jsp">试卷管理</a></li>
                            <li ><a href="teacher/5_3.jsp">成绩管理</a></li>
                        </ul>
                    </li>
                        <li >
                            <a href="#">成绩分析</a>
                        </li>
                    </ul>
                </section>
            </nav>
            <!-- 主要内容 -->
            <section class="main-section"  id="center" style="background: url(teacher/mainmenu/img/bg.jpg);">
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
                <!--在线交流-->
                <div class="Friends" id="Friends">
                    <p id="flip" ><img src="teacher/mainmenu/img/短信.png">
                        在线交流<img src="teacher/mainmenu/img/向下.png"  style=" float:right;margin:10px 20px 0  0">
                    </p>
                    <div class="friend" id="panel" style="margin: 0; padding: 0; text-align: center; height: 500px; display: none;" >
                        <!--<div class="row" style=" border-bottom:1px solid silver; ">
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
                        </div>-->
                        <div id="zaixianhaoyou" style="border-bottom: 1px solid silver; line-height: 40px;height: 40px;">在线好友<span class="label alert round">23</span><img src="teacher/mainmenu/img/向下.png" style=" float:right;margin:10px 20px 0  0"></div>
                        <div id="haoyou" style="width: 100%;height: 70%; border-bottom: 1px solid silver; display: none;background: skyblue;">
                            <ul style="float: left;">
                                <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                <li><img src="teacher/mainmenu/img/toux.png">好友1<span>最好的时光遇见最好的你</span></li>
                                <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                <li><img src="teacher/mainmenu/img/toux.png">好友1<span>最好的时光遇见最好的你</span></li>
                                <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                            </ul>
                        </div>
                        <div id="haoyouqun" style="border-bottom: 1px solid silver;line-height:40px; height:40px;">好友群 <span class="label alert round">2</span> <img src="teacher/mainmenu/img/向下.png" style=" float:right;margin:10px 20px 0  0"></div>
                        <div id="qun" style="width: 100%;height: 200px; border-bottom: 1px solid silver;display: none;background: skyblue;">
                            <ul style="float: left;">
                                <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                <li><img src="teacher/mainmenu/img/toux.png">好友1<span>最好的时光遇见最好的你</span></li>
                                <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                            </ul>
                        </div>
                        <div id="mosr" style="border-bottom: 1px solid silver;line-height:40px; height:40px;">陌生人 <span class="label alert round">3</span> <img src="teacher/mainmenu/img/向下.png" style=" float:right;margin:10px 20px 0  0"></div>
                        <div id="mosr1" style="width: 100%;height: 200px; border-bottom: 1px solid silver;display: none;background: skyblue;">
                            <ul style="float: left;">
                                <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                <li><img src="teacher/mainmenu/img/toux.png">好友1<span>最好的时光遇见最好的你</span></li>
                                <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                            </ul>
                        </div>
                        <div id="heimd" style="border-bottom: 1px solid silver;line-height:40px; height:40px;">黑名单  <img src="teacher/mainmenu/img/向下.png" style=" float:right;margin:10px 20px 0  0"></div>
                        <div id="heimd1" style="width: 100%;height: 200px; border-bottom: 1px solid silver;display: none;background: skyblue;">
                            <ul style="float: left;">
                                <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                <li><img src="teacher/mainmenu/img/toux.png">好友1<span>最好的时光遇见最好的你</span></li>
                                <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>

            <div style="background:url(teacher/mainmenu/img/bg1.jpg);background-size: 100%; padding: 30px 0 0 0;">
                <div class="personal" >
                    <div class="touxiang" ><img src="teacher/mainmenu/img/txiang.jpg"></div>
                    <button>编辑个人资料</button>
                    <p class="user"><a>用户名： <span>小咖喱</span></a></p>
                    <p class="gexingqianming"><a>个性签名： <span>蜀道难，难于上青天</span></a></p>
                    <p class="zhuanye"><a>专业： <span>网络工程</span></a></p>
                    <p class="class"><a>班级： <span>2班</span></a></p>
                    <!--小尺寸屏幕下-->
                    <div class="small-screen ">
                        <div class="dynamic2">
                            <ul class="tabs " data-tab  >
                                <li class="tab-title active has-tip radius" title="好友列表"><a href="#home1" ><img src="teacher/mainmenu/img/好友.png"></a></li>
                                <li class="tab-title has-tip radius" title="群/讨论组消息"><a href="#menu7"><img src="teacher/mainmenu/img/群.png"></a></li>
                                <li class="tab-title has-tip radius" title="学术动态"><a href="#menu6"><img src="teacher/mainmenu/img/动态.png"></a></li>
                                <li class="tab-title has-tip radius" title="课程"><a href="#menu5"><img src="teacher/mainmenu/img/课程.png"></a></li>
                                <li class="tab-title has-tip radius" title="访客"><a href="#menu4"><img src="teacher/mainmenu/img/访客.png"></a></li>

                            </ul>
                            <div class="tabs-content ">
                                <div class="content active" id="home1">
                                    <!--好友-->
                                    <div class="small-Friends" >
                                        <p id="small-flip"><img src="teacher/mainmenu/img/短信.png" >
                                            在线交流
                                        </p>
                                        <div class="friend" id="small-panel" >
                                            <div id="small-zaixianhaoyou" >在线好友 <span> 15/69</span> <span class="label alert round">23</span> <img src="teacher/mainmenu/img/向下.png" style=" float:right;margin:10px 20px 0  0"></div>
                                            <div id="small-haoyou" >
                                                <ul style="float: left;">
                                                    <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                                    <li><img src="teacher/mainmenu/img/toux.png">好友1<span>最好的时光遇见最好的你</span></li>
                                                    <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                                </ul>
                                            </div>
                                            <div id="small-haoyouqun" >好友群 <span>12/12 </span><span class="label alert round">7</span><img src="teacher/mainmenu/img/向下.png" style=" float:right;margin:10px 20px 0  0"></div>
                                            <div id="small-qun" >
                                                <ul style="float: left; background: skyblue;">
                                                    <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                                    <li><img src="teacher/mainmenu/img/toux.png">好友1<span>最好的时光遇见最好的你</span></li>
                                                    <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                                </ul>
                                            </div>
                                            <div id="small-mosr" >陌生人 <span>2/8</span> <span class="label alert round">1</span> <img src="teacher/mainmenu/img/向下.png" style=" float:right;margin:10px 20px 0  0"></div>
                                            <div id="small-mosr1" >
                                                <ul style="float: left;">
                                                    <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                                    <li><img src="teacher/mainmenu/img/toux.png">好友1<span>最好的时光遇见最好的你</span></li>
                                                    <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                                </ul>
                                            </div>
                                            <div id="small-heimd" >黑名单 <span>0/0 </span><img src="teacher/mainmenu/img/向下.png" style=" float:right;margin:10px 20px 0  0"></div>
                                            <div id="small-heimd1">
                                                <ul style="float: left;">
                                                    <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                                    <li><img src="teacher/mainmenu/img/toux.png">好友1<span>最好的时光遇见最好的你</span></li>
                                                    <li><img src="teacher/mainmenu/img/txiang.jpg">好友1<span>最好的时光遇见最好的你</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="content" id="menu7">
                                    <h3>好友动态</h3>
                                    <p>文本内容。</p>
                                </div>
                                <div class="content" id="menu6">
                                    <h3>团队</h3>
                                    <p>文本内容。</p>
                                </div>
                                <div class="content" id="menu5">
                                    <h3>课程</h3>
                                    <p>文本内容。</p>
                                </div>
                                <div class="content" id="menu4">
                                    <div class="small-visits">
                                        <ul>
                                            <li><a href="#"><img src="teacher/mainmenu/img/toux.png">李雯雯</a><span >10月1日</span></li>
                                            <li><a href="#"><img src="teacher/mainmenu/img/toux.png">陈浩彬</a><span >10月1日</span></li>
                                            <li><a href="#"><img src="teacher/mainmenu/img/toux.png">陈峰练</a><span >10月1日</span></li>
                                            <li><a href="#"><img src="teacher/mainmenu/img/toux.png">李雯雯</a><span  >10月1日</span></li>
                                            <li><a href="#"><img src="teacher/mainmenu/img/toux.png">陈浩彬</a><span >10月1日</span></li>
                                            <li><a href="#"><img src="teacher/mainmenu/img/toux.png">陈峰练</a><span >10月1日</span></li>
                                            <li><a href="#"><img src="teacher/mainmenu/img/toux.png">陈浩彬</a><span >10月1日</span></li>
                                            <li><a href="#"><img src="teacher/mainmenu/img/toux.png">陈峰练</a><span >10月1日</span></li>
                                            <li><a href="#"><img src="teacher/mainmenu/img/toux.png">陈浩彬</a><span >10月1日</span></li>
                                            <li><a href="#"><img src="teacher/mainmenu/img/toux.png">陈峰练</a><span >10月1日</span></li>
                                        </ul>
                                        <p><a href="#">更多</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--全屏。ipad-->
                <div class="dynamic dynamic1">
                    <ul class="tabs "data-tab  >
                        <li class="tab-title active"><a href="#home" style="border-radius: 10px 0 0 0;" >学术动态</a></li>
                        <li class="tab-title"><a href="#menu1">好友动态</a></li>
                        <li class="tab-title"><a href="#menu2">团队</a></li>
                        <li class="tab-title"><a href="#menu3">课程</a></li>
                        <li class="tab-title"><a href="#menu-1" style=" border-radius:  0 10px 0 0;">访客</a></li>
                    </ul>
                    <div class="tabs-content">
                        <div class="content active" id="home">
                            <h3>学术动态</h3>
                            <p>首页内容。</p>
                        </div>
                        <div class="content" id="menu1">
                            <h3>好友动态</h3>
                            <p>文本内容。</p>
                        </div>
                        <div class="content" id="menu2">
                            <h3>团队</h3>
                            <p>文本内容。</p>
                        </div>
                        <div class="content" id="menu3">
                            <h3>课程</h3>
                            <p>文本内容。</p>
                        </div>
                        <div class="content" id="menu-1">
                            <div class="big-visits">
                                <ul>
                                    <li><a href="#"><img src="teacher/mainmenu/img/toux.png">李雯雯</a><span >10月1日</span></li>
                                    <li><a href="#"><img src="teacher/mainmenu/img/toux.png">陈浩彬</a><span >10月1日</span></li>
                                    <li><a href="#"><img src="teacher/mainmenu/img/toux.png">陈峰练</a><span >10月1日</span></li>
                                    <li><a href="#"><img src="teacher/mainmenu/img/toux.png">李雯雯</a><span  >10月1日</span></li>
                                    <li><a href="#"><img src="teacher/mainmenu/img/toux.png">陈浩彬</a><span >10月1日</span></li>
                                    <li><a href="#"><img src="teacher/mainmenu/img/toux.png">陈峰练</a><span >10月1日</span></li>
                                </ul>
                                <p><a href="#">更多</a></p>
                        </div>
                    </div>
                    </div>
             </div>
                </div>
            <!-- 关闭菜单 -->
            <a class="exit-off-canvas"></a>
        <footer id="footer">
            <ul >
                <li>免责申明</li>
                <li>用户反馈</li>
                <li>关于我们</li>
            </ul>
        </footer>
    </div> <!-- 结束滑动菜单 -->
    <!-- 初始化 Foundation JS -->
        </div>
    <script>
        $(document).ready(function() {
            $(document).foundation();
        })

        $(document).ready(function(){
            $("#zaixianhaoyou").click(function(){
                $("#haoyou").slideToggle("slow");
            });
        });
        $(document).ready(function(){
            $("#flip").click(function(){
                $("#panel").slideToggle("slow");
            });
        });
        $(document).ready(function(){
            $("#haoyouqun").click(function(){
                $("#qun ").slideToggle("slow");
            });
        });
        $(document).ready(function(){
            $("#heimd").click(function(){
                $("#heimd1").slideToggle("slow");
            });
        });
        $(document).ready(function(){
            $("#mosr").click(function(){
                $("#mosr1").slideToggle("slow");
            });
        });

        $(document).ready(function(){
            $("#small-zaixianhaoyou").click(function(){
                $("#small-haoyou").slideToggle("slow");
            });
        });
        $(document).ready(function(){
            $("#small-flip").click(function(){
                $("#small-panel").slideToggle("slow");
            });
        });
        $(document).ready(function(){
            $("#small-haoyouqun").click(function(){
                $("#small-qun ").slideToggle("slow");
            });
        });
        $(document).ready(function(){
            $("#small-heimd").click(function(){
                $("#small-heimd1").slideToggle("slow");
            });
        });
        $(document).ready(function(){
            $("#small-mosr").click(function(){
                $("#small-mosr1").slideToggle("slow");
            });
        });
        
    </script>

</header>
</body>
</html>