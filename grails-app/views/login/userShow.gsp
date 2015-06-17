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
</head>

<body>

<section id="container" >
<!--header start-->
<header class="header" style="background: #1c7ff4;">
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
    </div>
    <!--logo start-->
    <a href="index.html" class="logo"><img height="30" src="${resource(dir: 'images', file: 'logo.png')}"></a>
    <!--logo end-->
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
            <li>
                <g:link controller="login" action="userList">
                    <i class="fa fa-dashboard"></i>
                    <span>用户管理</span>
                </g:link>
            </li>
            <li>
                <a href="google_maps.html" >
                    <i class="fa fa-map-marker"></i>
                    <span>公司管理</span>
                </a>
            </li>
            <li>
                <a href="google_maps.html" >
                    <i class="fa fa-map-marker"></i>
                    <span>权限管理</span>
                </a>
            </li>
            <li>
                <a href="google_maps.html" >
                    <i class="fa fa-map-marker"></i>
                    <span>和许助手</span>
                </a>
            </li>
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
<section class="wrapper">
    <section class="panel">
        <div class="row">
            <div class="col-lg-12">

                <header class="panel-heading">
                    新建用户
                </header>
                <div class="panel-body">
                    <g:form class="form-horizontal tasi-form" url="[controller:'login',action:'userSave']">
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">姓名：</label>
                            <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="name"/></span>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">用户名：</label>
                            <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">城市：</label>
                            <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="city"/></span>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">电话：</label>
                            <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="phone"/></span>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">公司：</label>
                            <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="cid"/></span>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">权限：</label>
                            <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="rid"/></span>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">地址：</label>
                            <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="address"/></span>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">创建时间</label>
                            <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="dateCreat"/></span>
                        </div>

                        <button type="submit" class="btn btn-info">保存</button>
                    </g:form>
                </div>
            </div>
        </div>

    </section>
</section>
<!--main content end-->

<!-- Right Slidebar start -->
<div class="sb-slidebar sb-right sb-style-overlay">
    <h5 class="side-title">Online Customers</h5>
    <ul class="quick-chat-list">
        <li class="online">
            <div class="media">
                <a href="index.html#" class="pull-left media-thumb">
                    <img alt="" src="img/chat-avatar2.jpg" class="media-object">
                </a>
                <div class="media-body">
                    <strong>John Doe</strong>
                    <small>Dream Land, AU</small>
                </div>
            </div><!-- media -->
        </li>
        <li class="online">
            <div class="media">
                <a href="index.html#" class="pull-left media-thumb">
                    <img alt="" src="img/chat-avatar.jpg" class="media-object">
                </a>
                <div class="media-body">
                    <div class="media-status">
                        <span class=" badge bg-important">3</span>
                    </div>
                    <strong>Jonathan Smith</strong>
                    <small>United States</small>
                </div>
            </div><!-- media -->
        </li>

        <li class="online">
            <div class="media">
                <a href="index.html#" class="pull-left media-thumb">
                    <img alt="" src="img/pro-ac-1.png" class="media-object">
                </a>
                <div class="media-body">
                    <div class="media-status">
                        <span class=" badge bg-success">5</span>
                    </div>
                    <strong>Jane Doe</strong>
                    <small>ABC, USA</small>
                </div>
            </div><!-- media -->
        </li>
        <li class="online">
            <div class="media">
                <a href="index.html#" class="pull-left media-thumb">
                    <img alt="" src="img/avatar1.jpg" class="media-object">
                </a>
                <div class="media-body">
                    <strong>Anjelina Joli</strong>
                    <small>Fockland, UK</small>
                </div>
            </div><!-- media -->
        </li>
        <li class="online">
            <div class="media">
                <a href="index.html#" class="pull-left media-thumb">
                    <img alt="" src="img/mail-avatar.jpg" class="media-object">
                </a>
                <div class="media-body">
                    <div class="media-status">
                        <span class=" badge bg-warning">7</span>
                    </div>
                    <strong>Mr Tasi</strong>
                    <small>Dream Land, USA</small>
                </div>
            </div><!-- media -->
        </li>
    </ul>
    <h5 class="side-title"> pending Task</h5>
    <ul class="p-task tasks-bar">
        <li>
            <a href="index.html#">
                <div class="task-info">
                    <div class="desc">Dashboard v1.3</div>
                    <div class="percent">40%</div>
                </div>
                <div class="progress progress-striped">
                    <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">
                        <span class="sr-only">40% Complete (success)</span>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <a href="index.html#">
                <div class="task-info">
                    <div class="desc">Database Update</div>
                    <div class="percent">60%</div>
                </div>
                <div class="progress progress-striped">
                    <div style="width: 60%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" role="progressbar" class="progress-bar progress-bar-warning">
                        <span class="sr-only">60% Complete (warning)</span>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <a href="index.html#">
                <div class="task-info">
                    <div class="desc">Iphone Development</div>
                    <div class="percent">87%</div>
                </div>
                <div class="progress progress-striped">
                    <div style="width: 87%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="20" role="progressbar" class="progress-bar progress-bar-info">
                        <span class="sr-only">87% Complete</span>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <a href="index.html#">
                <div class="task-info">
                    <div class="desc">Mobile App</div>
                    <div class="percent">33%</div>
                </div>
                <div class="progress progress-striped">
                    <div style="width: 33%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar progress-bar-danger">
                        <span class="sr-only">33% Complete (danger)</span>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <a href="index.html#">
                <div class="task-info">
                    <div class="desc">Dashboard v1.3</div>
                    <div class="percent">45%</div>
                </div>
                <div class="progress progress-striped active">
                    <div style="width: 45%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="45" role="progressbar" class="progress-bar">
                        <span class="sr-only">45% Complete</span>
                    </div>
                </div>

            </a>
        </li>
        <li class="external">
            <a href="index.html#">See All Tasks</a>
        </li>
    </ul>
</div>
<!-- Right Slidebar end -->

<!--footer start-->
%{--<footer class="site-footer">--}%
%{--<div class="text-center">--}%
%{--2013 &copy; FlatLab by VectorLab.--}%
%{--<a href="index.html#" class="go-top">--}%
%{--<i class="fa fa-angle-up"></i>--}%
%{--</a>--}%
%{--</div>--}%
%{--</footer>--}%
<!--footer end-->
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

%{--<script>--}%

%{--//owl carousel--}%

%{--$(document).ready(function() {--}%
%{--$("#owl-demo").owlCarousel({--}%
%{--navigation : true,--}%
%{--slideSpeed : 300,--}%
%{--paginationSpeed : 400,--}%
%{--singleItem : true,--}%
%{--autoPlay:true--}%

%{--});--}%
%{--});--}%

%{--//custom select box--}%

%{--$(function(){--}%
%{--$('select.styled').customSelect();--}%
%{--});--}%

%{--</script>--}%

</body>
</html>