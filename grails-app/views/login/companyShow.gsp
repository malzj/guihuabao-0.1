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
            <section class="panel">
                <div class="row">
                    <div class="col-lg-12">

                        <header class="panel-heading">
                            公司
                        </header>
                        <div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">企业名称：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="companyname"/></span>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">企业简称：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="companyAbbrev"/></span>

                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">企业联系人：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="contactName"/></span>

                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">职务：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="job"/></span>

                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">公司电话：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="phone"/></span>

                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">移动电话：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="telephone"/></span>

                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">电子邮件：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="email"/></span>

                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">传真：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="fax"/></span>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">企业类型：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="companyType"/></span>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">企业成立时间：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="regtime"/></span>
                                <div class="col-sm-10 col-lg-4">
                                    <g:datePicker name="regtime" precision="day"  value="${companyInstance?.regtime}"  />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">通信地址：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="address"/></span>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">邮政编码：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="postalcode"/></span>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">网址：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="website"/></span>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">备注：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="remark"/></span>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">使用时间：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="dateUse"/></span>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">创建时间：</label>
                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="dateCreat"/></span>
                                <div class="col-sm-10 col-lg-4">
                                    <g:datePicker name="dateCreat" precision="day"  value="${companyInstance?.dateCreat}"  />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">公司logo：</label>
                                <span class="property-value" aria-labelledby="name-label"><img alt="" src="${resource(dir: 'images', file: ''+companyInstance.logoimg+'')}" alt="" />
                                    %{--<g:fieldValue bean="${roleInstance}" field="logoimg"/>--}%
                                </span>
                            </div>

                            <g:form>
                                <g:hiddenField name="id" value="${companyInstance?.id}" />
                                <g:link controller="login" action="companyEdit" id="${companyInstance?.id}" class="btn btn-info">修改</g:link>
                                <g:actionSubmit type="submit" class="btn btn-info" action="companyDelete"  value="删除" onclick="return confirm('确定删除?');" />
                            </g:form>

                        </div>
                    </div>
                </div>

            </section>
        </section>
        <!--main content end-->

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