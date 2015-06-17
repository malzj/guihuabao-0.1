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
<g:render template="hearder" />
<!--header end-->
<!--sidebar start-->
<g:render template="sidebar" />
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        <h2 style="float:left;">公司列表</h2>
                        <g:link controller="login" action="companyCreate" class="btn btn-info" style="display:block;float:right;">新建公司</g:link>
                        <div style="clear:both;"></div>
                    </header>
                    <table class="table table-striped table-advance table-hover">
                        <thead>
                        <tr>
                            <th>#编号</th>
                            <th>名称</th>
                            <th>备注</th>
                            <th>使用时间</th>
                            <th>创建时间</th>
                            <th>地址</th>
                            <th>电话</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${companyInstanceList}" status="i" var="companyInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <td>${fieldValue(bean: companyInstance, field: "id")}</td>
                                <td><g:link controller="login" action="companyShow" id="${companyInstance?.id}">${fieldValue(bean: companyInstance, field: "companyname")}</g:link></td>
                                <td>${fieldValue(bean: companyInstance, field: "remark")}</td>
                                <td>${fieldValue(bean: companyInstance, field: "dateUse")}</td>
                                <td>${fieldValue(bean: companyInstance, field: "dateCreat")}</td>
                                <td>${fieldValue(bean: companyInstance, field: "address")}</td>
                                <td>${fieldValue(bean: companyInstance, field: "phone")}</td>

                                <td>
                                    <g:link action="companyShow" id="${companyInstance?.id}" class="btn btn-success btn-xs"><i class="fa fa-check"></i></g:link>
                                    <g:link action="companyEdit" id="${companyInstance?.id}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></g:link>
                                    <g:link action="companyDelete" id="${companyInstance?.id}" class="btn btn-danger btn-xs" onclick="return confirm('确定删除？');"><i class="fa fa-trash-o "></i></g:link>
                                </td>


                            </tr>
                        </g:each>

                        </tbody>
                    </table>
                    <div class="pagination">
                        <g:paginate total="${companyInstanceTotal}" />
                    </div>
                </section>
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
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="js/jquery.sparkline.js" type="text/javascript"></script>
<script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="js/owl.carousel.js" ></script>
<script src="js/jquery.customSelect.min.js" ></script>
<script src="js/respond.min.js" ></script>

<!--right slidebar-->
<script src="js/slidebars.min.js"></script>

<!--common script for all pages-->
<script src="js/common-scripts.js"></script>

<!--script for this page-->
<script src="js/sparkline-chart.js"></script>
<script src="js/easy-pie-chart.js"></script>
<script src="js/count.js"></script>

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