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
    <g:render template="set_siderbar" />
    <!--sidebar end-->
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <div class="info_content">
                <div class="info_title">
                    个人设置
                </div>
                <div class="text clearfix">
                    <g:form>
                        <table>
                            <tr>
                                <td>姓名：</td>
                                <td><input class="input-shadow" type="text" /></td>
                            </tr>
                            <tr>
                                <td>账号：</td>
                                <td>123@qq.com<a href="javascript:;">【更换绑定】</a></td>
                            </tr>
                            <tr>
                                <td>密码：</td>
                                <td><button type="submit" class="btn btn-info"><i class="fa fa-pencil"></i>更换密码</button></td>
                            </tr>
                            <tr>
                                <td>性别：</td>
                                <td><input type="radio">男<input type="radio">女</td>
                            </tr>
                            <tr>
                                <td>电话：</td>
                                <td><input class="input-shadow" type="text" /></td>
                            </tr>
                            <tr>
                                <td>部门：</td>
                                <td><input class="input-shadow" type="text" /></td>
                            </tr>
                            <tr>
                                <td>职位：</td>
                                <td><input class="input-shadow" type="text" /></td>
                            </tr>
                            <tr>
                                <td>角色：</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><button type="submit" class="btn btn-info">保存</button></td>
                                <td></td>
                            </tr>
                        </table>
                        <div class="imgupload f-l">
                            <div class="f-l">头像设置：</div>
                            <div class="f-l">
                                <input type="file" id="up_img" name="file1"/>
                                <div id="imgdiv" class="mt20"><img id="imgShow" width="305" height="305"/></div>
                                <span>头像大小（100*100）</span>
                            </div>
                        </div>
                    </g:form>
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

    <!--上传图片预览 js-->
    <script src="${resource(dir: 'js', file: 'uploadPreview.js')}"></script>
    <script type="text/javascript">
        window.onload = function () {
            new uploadPreview({ UpBtn: "up_img", DivShow: "imgdiv", ImgShow: "imgShow" });
        }
    </script>

</body>
</html>