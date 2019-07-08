<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>车牌识别系统</h2>
        <ol class="breadcrumb">
            <li>
                <a>车辆信息查询</a>
            </li>
            <p style="..." id="info1"></p>
            <div class="form-group">
            <input type="text" class="form-control" id="carnum" placeholder="请输入查询车牌">
            </div>
            <button id="submit" class="btn btn-primary">查询</button>
            <button id="delete" class="btn btn-primary">删除</button>
        </ol>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
<table id="test-table" class="table table-hover table-striped table-condensed table-bordered"></table>
<!-- Mainly scripts -->
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="/static/js/bootstrap-table/bootstrap-table.js"></script>
<script src="/static/js/bootstrap-table/bootstrap-table-zh-CN.js"></script>
<script src="/static/js/inspinia.js"></script>
<script src="/static/js/plugins/pace/pace.min.js"></script>
    <!-- iCheck -->
    <script src="/static/js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>
    <script>
        $("#submit").click(function () {
            var str = $("#carnum").val();
     $(function (){
         $("#test-table").bootstrapTable('destroy');
         $('#test-table').bootstrapTable({
             method:'GET',
             url:"/searchCarNum/load?carnum="+str,//请求后台url
             cache:false,//是否使用缓存
             striped:true,//是否使用行间隔色
             pagination:true,//是否使用分页
             toolbar:'#toolbar',//工具按钮容器
             pageSize:10,//每行记录数
             pageNumber:1,//初始化加载第一页
             pageList:[10,20,50,100,200,500],//可供选择的每页行数
             showColumns:false,
             showRefresh:false,
             showExport:false,
             singleSelect:true,
             clickToSelect:true,//点击选中行
             search:false,
             silent:true,
             sidePagination:"server",
             columns:[
                 {
                     field:"no",
                     title:"",
                     class:'col-md-1',
                     align:"center",
                     valign:"middle",
                     sortable:"true"
                 },
                 {
                     field:"value.carinfCarnum",
                     title:"车牌",
                     class:"col-md-1",
                     align:"center",
                     valign:"middle",
                     sortable:"true"

                 },
                 {
                     field:"value.carinfUserid",
                     title:"车主id",
                     class:"col-md-1",
                     align:"center",
                     valign:"middle",
                     sortable:"true"

                 },
                 {
                     field:"value.carinfCardis",
                     title:"车辆地址",
                     class:"col-md-1",
                     align:"center",
                     valign:"middle",
                     sortable:"true"

                 },
                 {
                     field:"value.carinfTime",
                     title:"识别时间",
                     class:"col-md-1",
                     align:"center",
                     valign:"middle",
                     sortable:"true"

                 }],
             queryParamsType:"undefined",
             queryParams: function queryParams(params) {
                 var param = {
                     pageNumber:params.pageNumber,
                     pageSize:params.pageSize,
                 };
                 return param;
             },
             formatLoadingMessage : function () {
                 return "请稍等，正在加载。。。。。";
             },
             formatNoMatches : function (){
                 return "无符合条件记录";
         },
             onExpandRow:function (index, row, $detail) {
                 oInit.InitSubTable(index, row, $detail);
             }
         });
                 });
        });
        $("#delete").click(function () {
            var str = $("#carnum").val();
            $(function (){
                $("#test-table").bootstrapTable('destroy');
                $('#test-table').bootstrapTable({
                    method:'GET',
                    url:"/searchCarNum/delete?carnum="+str,//请求后台url
                    cache:false,//是否使用缓存
                    striped:true,//是否使用行间隔色
                    pagination:true,//是否使用分页
                    toolbar:'#toolbar',//工具按钮容器
                    pageSize:10,//每行记录数
                    pageNumber:1,//初始化加载第一页
                    pageList:[10,20,50,100,200,500],//可供选择的每页行数
                    showColumns:false,
                    showRefresh:false,
                    showExport:false,
                    singleSelect:true,
                    clickToSelect:true,//点击选中行
                    search:false,
                    silent:true,
                    sidePagination:"server",
                    columns:[
                        {
                            field:"no",
                            title:"",
                            class:'col-md-1',
                            align:"center",
                            valign:"middle",
                            sortable:"true"
                        },
                        {
                            field:"value.carinfCarnum",
                            title:"车牌",
                            class:"col-md-1",
                            align:"center",
                            valign:"middle",
                            sortable:"true"

                        },
                        {
                            field:"value.carinfUserid",
                            title:"车主id",
                            class:"col-md-1",
                            align:"center",
                            valign:"middle",
                            sortable:"true"

                        },
                        {
                            field:"value.carinfCardis",
                            title:"车辆地址",
                            class:"col-md-1",
                            align:"center",
                            valign:"middle",
                            sortable:"true"

                        },
                        {
                            field:"value.carinfTime",
                            title:"识别时间",
                            class:"col-md-1",
                            align:"center",
                            valign:"middle",
                            sortable:"true"

                        }],
                    queryParamsType:"undefined",
                    queryParams: function queryParams(params) {
                        var param = {
                            pageNumber:params.pageNumber,
                            pageSize:params.pageSize,
                        };
                        return param;
                    },
                    formatLoadingMessage : function () {
                        return "请稍等，正在加载。。。。。";
                    },
                    formatNoMatches : function (){
                        return "无符合条件记录";
                    },
                    onExpandRow:function (index, row, $detail) {
                        oInit.InitSubTable(index, row, $detail);
                    }
                });
            });
        });

    </script>
</div>
