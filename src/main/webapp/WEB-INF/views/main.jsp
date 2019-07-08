<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/29
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name = "viewport" content="width=device-width, initial-scale=1.0">
    <title>查询结果</title>
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/animate.css" rel="stylesheet">
    <link href="/static/css/style.css" rel="stylesheet">
    <link href="/static/css/bootstrap-table.css" rel="stylesheet">

    <link href="/static/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
</head>
<body class="pace-done">
<div class="pace pace-inactive">
    <div class="pace-progress" data-progress-text="100%" data-progress="99"  style="transform: translate3d(100%, 0px, 0px);">
       <div class="pace-progress-inner"></div>
    </div>
    <div class="pace-activity"></div>
</div>
    <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu" style="">
                    <li class="nav-header" style="padding: 0;">
                    </li>
                    <li class="">
                        <a href="#"><i class="fa fa-th-large"></i> <span class="nav-label">车牌查询</span>
                            <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse" style="height: 0px;">
                            <li><a href="carSearchResult">车牌查询</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div id="page-wrapper" class="gray-bg" style="min-height: 1000px;">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i>
                        </a>
                        <form role="search" class="navbar-form-custom">
                            <div class="form-group">
                                <input type="text" placeholder="" class="form-control"
                                       name="top-search" id="top-search">
                            </div>
                        </form>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <a href="/">
                                <i class="fa fa-sign-out"></i> Log out
                            </a>
                        </li>
                    </ul>

                </nav>
            </div>
            <jsp:include page="SearchResult/${SearchResult}.jsp"></jsp:include>
            <div class="footer">
                <div class="pull-right">
                    Zhouwj
                </div>
                <div>
                    <strong>Copyright</strong> Zhouwj
                </div>
            </div>

        </div>
    </div>
    </div>

</body>
</html>
