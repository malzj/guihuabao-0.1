<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 15-6-16
  Time: 下午3:59
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>规划宝后台管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'bootstrap-reset.css')}" rel="stylesheet">
    <!--external css-->
    <link href="${resource(dir: 'assets/font-awesome/css', file: 'font-awesome.css')}" rel="stylesheet">
    <link href="${resource(dir: 'assets/jquery-easy-pie-chart', file: 'jquery.easy-pie-chart.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'owl.carousel.css')}" rel="stylesheet">

    <!--right slidebar-->
    <link href="${resource(dir: 'css', file: 'slidebars.css')}" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'style-responsive.css')}" rel="stylesheet">

    <link href="${resource(dir: 'css', file: 'ownset.css')}" rel="stylesheet">
</head>

<body>

<section id="container" >
    <!--header start-->
    <g:render template="header" />
    <!--header end-->
    <!--sidebar start-->
    <g:render template="zhoubao_siderbar" />
    <!--sidebar end-->
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <div class="hxzs_content clearfix">
                <div class="book_list">
                    <h2>
                        <select id="year" name="year">
                            <option value="2014" selected="selected">2014</option>
                            <option value="2015" selected="selected">2015</option>
                        </select>
                    </h2>
                    <div class="menu_side">
                        <ul class="menu">
                            <li>
                                <span>1月</span>
                                <ul class="weeks">
                                    <li class="active"><span>第1周</span></li>
                                    <li><span>第2周</span></li>
                                    <li><span>第3周</span></li>
                                    <li><span>第4周</span></li>
                                </ul>
                            </li>
                            <li>
                                <span>2月</span>
                                <ul class="weeks">
                                    <li><span>第1周</span></li>
                                    <li><span>第2周</span></li>
                                    <li><span>第3周</span></li>
                                    <li><span>第4周</span></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="zhoubao">
                    <div class="top clearfix">
                        <div class="address f-l">
                            oscar第1周的工作报告
                        </div>
                        <div class="pick_page f-r">
                            <a class="this_week">上一周</a>
                            <a class="this_week">本周</a>
                            <a class="this_week">下一周</a>
                            <button id="view" class="rbtn btn-blue ml25">预览</button>
                        </div>
                    </div>
                    <div class="discuss clearfix">
                        <h4>反馈及评论</h4>
                    </div>
                    <div class="reply_box">
                        <div class="name">艾瑞克</div>
                        <p>好好工作是一种态度</p>
                        <span>2015-7-7 16:11</span><a href="javascript:;" class="reply">回复</a>
                        <div class="shuru">
                            <span>回复&nbsp;艾瑞克</span>
                            <div class="mt10">
                                <textarea></textarea>
                            </div>
                            <button class="fbtn btn-white mt10">回复</button>
                            <button class="fbtn btn-white mt10 ml20">取消</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--main content end-->

    </section>
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script class="include" type="text/javascript" src="${resource(dir: 'js', file: 'jquery.dcjqaccordion.2.7.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.scrollTo.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.nicescroll.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'jquery.sparkline.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'assets/jquery-easy-pie-chart/', file: 'jquery.easy-pie-chart.js')}"></script>
    <script src="${resource(dir: 'js', file: 'owl.carousel.js')}" ></script>
    <script src="${resource(dir: 'js', file: 'jquery.customSelect.min.js')}" ></script>
    <script src="${resource(dir: 'js', file: 'respond.min.js')}" ></script>

    <!--right slidebar-->
    <script src="${resource(dir: 'js', file: 'slidebars.min.js')}"></script>

    <!--common script for all pages-->
    <script src="${resource(dir: 'js', file: 'common-scripts.js')}"></script>

    <!--script for this page-->
    <script src="${resource(dir: 'js', file: 'sparkline-chart.js')}"></script>
    <script src="${resource(dir: 'js', file: 'easy-pie-chart.js')}"></script>
    <script src="${resource(dir: 'js', file: 'count.js')}"></script>
    <!--月份列表js-->
    <script type="text/javascript">
        $(function(){
            $(".menu>li>span").click(function(){
                $(this).next(".weeks").toggle();
            })
            $(".weeks>li>span").click(function(){
                $(".weeks li").removeAttr("class")
                $(this).parent().attr("class","active")
            })
            $(".zhoubao .reply_box .reply").click(function(){
                $(".zhoubao .reply_box .shuru").toggle();
            })
        })
    </script>
</body>
</html>