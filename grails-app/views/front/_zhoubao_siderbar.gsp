<aside>
    <div id="sidebar"  class="nav-collapse ">
        <div class="sidebar_object">
            <i class="page"></i>
            报告
        </div>
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
            <li>
                <g:link action="myReport">
                    <span>我的报告</span>
                </g:link>
            </li>
            <g:if test="${session.user.pid==1||session.user.pid==2}">
            <li>
                <g:link action="xsReport">
                    <span>下属报告</span>
                    <em class="f-r">7</em>
                </g:link>
            </li>
            </g:if>
            <li>
                <g:link action="replyReport">
                    <span>回复我的</span>
                    <em class="f-r">0</em>
                </g:link>
            </li>
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>