


<html>
<head>
    <title>规划宝后台管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'bootstrap-reset.css')}" rel="stylesheet">
    <!--external css-->
    <link href="${resource(dir: 'assets/font-awesome/css', file: 'font-awesome.css')}" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="${resource(dir: 'assets/bootstrap-fileupload', file: 'bootstrap-fileupload.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'assets/bootstrap-wysihtml5', file: 'bootstrap-wysihtml5.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'assets/bootstrap-colorpicker/css', file: 'colorpicker.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'assets/bootstrap-daterangepicker', file: 'daterangepicker-bs3.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'assets/bootstrap-datetimepicker/css', file: 'datetimepicker.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'assets/bootstrap-datepicker/css', file: 'datepicker.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'assets/bootstrap-timepicker/compiled', file: 'timepicker.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'assets/jquery-multi-select/css', file: 'multi-select.css')}" />

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
    <header class="header">
        <div class="top">
            <div class="t_left">你好Oscar，上次登录规划宝，今日2015年4月20日 星期三</div>
            <div class="t_right">
                <ul>
                    <li><a href="javascript:;"><i class="fa fa-bell"></i>消息<span class="badge bg-important">5</span></a></li>
                    <li>|</li>
                    <li><i class="fa fa-cog"></i>设置<a href="javascript:;" class="fa fa-chevron-down"></a></li>
                    <li>|</li>
                    <li><a href="javascript:;"><i></i>安全退出</a></li>
                </ul>
            </div>
        </div>
        <div class="navbox">
            <!--logo start-->
            <a href="index.html" class="logo"><img height="30" src="img/logo.png"></a>
            <!--logo end-->
            <ul class="nav">
                <li><a href="javascript:;"><i class="home"></i>首页</a></li>
                <li><a href="javascript:;"><i class="aim"></i>目标</a></li>
                <li><a href="javascript:;"><i class="rw"></i>任务</a></li>
                <li><a href="javascript:;"><i class="bg"></i>报告</a></li>
                <li><a href="javascript:;"><i class="app"></i>应用</a></li>
                <li><a href="javascript:;"><i class="ht"></i>后台</a></li>
            </ul>
            <a href="javascript:;" class="f-r zs"><i></i>和许助手</a>
        </div>
    </header>
    <!--header end-->
    <!--sidebar start-->
    <aside>
        <div id="sidebar"  class="nav-collapse ">
            <div class="sidebar_object">
                <i class="page"></i>
                后台管理
            </div>
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a href="/guihuabao/login/userList">
                        <span>用户管理</span>
                    </a>
                </li>
                <li>
                    <a href="/guihuabao/login/companyList">
                        <span>公司管理</span>
                    </a>
                </li>
                <li>
                    <a href="/guihuabao/login/roleList">
                        <span>权限管理</span>
                    </a>
                </li>
                <li>
                    <a href="google_maps.html" >
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
            <div class="col-tb">
                <div class="col-cell">
                    <div class="toolkit">
                        <span>我的任务</span>
                        <div class="shaixuan">
                            <a class="task-order">排序<i class="fa fa-caret-down"></i></a>
                        </div>
                        <a href="#" id="addrenwu" class="f-r"><i class="fa fa-plus-circle"></i>新建任务</a>
                    </div>
                    <div class="e-list-group today">
                        <div class="e-list-head">
                            <a class="group-add f-r">+</a>
                            <a class="e-list-title"><strong>今天开始（2）</strong><i class="fa fa-angle-right"></i></a>
                        </div>
                        <ul class="e-list">
                            <li>1234</li>
                            <li>2345</li>
                        </ul>
                    </div>
                    <div class="e-list-group tomorrow">
                        <div class="e-list-head">
                            <a class="group-add f-r">+</a>
                            <a class="e-list-title"><strong>明天开始</strong><i class="fa fa-angle-right"></i></a>
                        </div>
                        <ul class="e-list">
                            <li>1234</li>
                            <li>2345</li>
                        </ul>
                    </div>
                    <div class="e-list-group overdate">
                        <div class="e-list-head">
                            <a class="group-add f-r">+</a>
                            <a class="e-list-title"><strong>即将到期任务</strong><i class="fa fa-angle-right"></i></a>
                        </div>
                        <ul class="e-list">
                            <li>
                                <span class="mark mark-nomarl"><i></i></span>
                                <span class="sn">1</span>
                                <span class="title">任务标题</span>
                                <div class="right">
                                    <span class="hsfinish"><i class="fa fa-square-o"></i>标记完成</span>
                                    <span class="del"><i class="fa fa-trash-o"></i>删除任务</span>
                                    <span class="date f-r">2015-7-16</span>
                                </div>
                            </li>
                            <li>2345</li>
                        </ul>
                    </div>
                </div>
                <div class="col-cell" style="width:340px;">

                </div>
            </div>
            <!--弹层 start-->
            <div class="popup_box">
                <div class="m_box">
                    <header class="panel-heading">
                        <span><i class="yh"></i>新建任务</span>
                        <div class="close"><a href="javascript:;" class="fa fa-times"></a></div>
                    </header>
                    <form>
                        <div class="r-title">
                            <div class="r-title-con f-l">任务</div>
                            <div class="r-title-jinji f-l">
                                <i class="clock-b"></i><span class="r-chd">紧急程度</span>
                                <input type="hidden" id="playstatus" name="playstatus" />
                                <ul class="r-jinji-down">
                                    <li><a data-playstatus="1"><i class="clock-red"></i>紧急且重要</a></li>
                                    <li><a data-playstatus="2"><i class="clock-yellow"></i>紧急不重要</a></li>
                                    <li><a data-playstatus="3"><i class="clock-green"></i>重要不紧急</a></li>
                                    <li><a data-playstatus="4"><i class="clock-blue"></i>不重要不紧急</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="control-group">
                            <input type="text" placeholder="一句话描述任务" class="size" name="" />
                        </div>
                        <div class="control-group">
                            <input type="text" placeholder="添加任务详情" class="size" name="" />
                        </div>
                        <div class="control-group">
                            <table>
                                <tr>
                                    <td>负责人</td>
                                    <td>
                                        ${session.user.name}
                                    </td>
                                </tr>
                                <tr>
                                    <td>执行人</td>
                                    <td><input type="text" name="" /></td>
                                </tr>
                                <tr>
                                    <td>起止日期</td>
                                    <td><input id="startdate" name="startdate" min-view="1" value="" readonly="" class="form_datetime" type="text">-<input id="enddate" name="enddate" value="" readonly="" class="form_datetime" type="text"></td>
                                </tr>
                            </table>
                        </div>
                        <div class="control-group">
                            <button id="submit" type="submit" class="btn btn-info f-r">提交</button>
                        </div>
                    </form>
                </div>
            </div>
            <!--弹层 end-->
        </section>
    </section>
    <!--main content end-->

</section>

<!-- js placed at the end of the document so the pages load faster -->
<script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
<script class="include" type="text/javascript" src="${resource(dir: 'js', file: 'jquery.dcjqaccordion.2.7.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.scrollTo.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.nicescroll.js')}" type="text/javascript"></script>
<script src="${resource(dir: 'js', file: 'respond.min.js')}" ></script>

<!--this page plugins-->
<script type="text/javascript" src="${resource(dir: 'assets/fuelux/js', file: 'spinner.min.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'assets/bootstrap-fileupload', file: 'bootstrap-fileupload.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'assets/bootstrap-wysihtml5', file: 'wysihtml5-0.3.0.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'assets/bootstrap-wysihtml5', file: 'bootstrap-wysihtml5.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'assets/bootstrap-datepicker/js', file: 'bootstrap-datepicker.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'assets/bootstrap-datetimepicker/js', file: 'bootstrap-datetimepicker.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'assets/bootstrap-daterangepicker', file: 'moment.min.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'assets/bootstrap-daterangepicker', file: 'daterangepicker.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'assets/bootstrap-colorpicker/js', file: 'bootstrap-colorpicker.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'assets/bootstrap-timepicker/js', file: 'bootstrap-timepicker.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'assets/jquery-multi-select/js', file: 'jquery.multi-select.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'assets/jquery-multi-select/js', file: 'jquery.quicksearch.js')}"></script>

<!--right slidebar-->
<script src="${resource(dir: 'js', file: 'slidebars.min.js')}"></script>

<!--common script for all pages-->
<script src="${resource(dir: 'js', file: 'common-scripts.js')}"></script>
<!--this page  script only-->
<script src="${resource(dir: 'js', file: 'advanced-form-components.js')}"></script>
<script type="text/javascript">
    $(function(){
        $("#addrenwu").click(function(){
            $(".popup_box").css("display","block");
        });
        $(".close").click(function(){
            $(".popup_box").css("display","none");
        });
        $(".popup_box .r-jinji-down a").click(function(){
            var playstatus=$(this).attr("data-playstatus");
            $("#playstatus").val(playstatus);
        })
    })
</script>
</body>
</html>