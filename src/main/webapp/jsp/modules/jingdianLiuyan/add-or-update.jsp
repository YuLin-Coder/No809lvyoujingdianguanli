<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑景点留言</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">景点留言管理</li>
                        <li class="breadcrumb-item active">编辑景点留言</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">景点留言信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <%--<div class="form-group col-md-6">
                                        <label>景点</label>
                                        <div>
                                            <select id="jingdianSelect" name="jingdianSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5">
                                            </select>
                                        </div>
                                    </div>--%>
                                    <div class="form-group col-md-6">
                                        <label>景点名</label>
                                        <input id="jingdianName" name="jingdianName" class="form-control"
                                               placeholder="景点名" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>景点类型</label>
                                        <input id="jingdianValue" name="jingdianValue" class="form-control"
                                               placeholder="景点类型" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>景点等级</label>
                                        <input id="jingdianDengjiValue" name="jingdianDengjiValue" class="form-control"
                                               placeholder="景点等级" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>景点缩略图</label>
                                        <img id="jingdianPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>景点特色</label>
                                        <input id="jingdianTese" name="jingdianTese" class="form-control"
                                               placeholder="景点特色" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>景点路线</label>
                                        <input id="jingdianLuxian" name="jingdianLuxian" class="form-control"
                                               placeholder="景点路线" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>门票参考价格</label>
                                        <input id="jingdianNewMoney" name="jingdianNewMoney" class="form-control"
                                               placeholder="门票参考价格" readonly>
                                    </div>
                                    <%--<div class="form-group col-md-6">
                                        <label>游客</label>
                                        <div>
                                            <select id="yonghuSelect" name="yonghuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5">
                                            </select>
                                        </div>
                                    </div>--%>
                                    <div class="form-group col-md-6">
                                        <label>游客姓名</label>
                                        <input id="yonghuName" name="yonghuName" class="form-control"
                                               placeholder="游客姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>游客手机号</label>
                                        <input id="yonghuPhone" name="yonghuPhone" class="form-control"
                                               placeholder="游客手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>游客身份证号</label>
                                        <input id="yonghuIdNumber" name="yonghuIdNumber" class="form-control"
                                               placeholder="游客身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>游客头像</label>
                                        <img id="yonghuPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>性别</label>
                                        <input id="sexValue" name="sexValue" class="form-control"
                                               placeholder="性别" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="jingdianId" name="jingdianId" type="hidden">
                                <input id="yonghuId" name="yonghuId" type="hidden">
                                    <div class="form-group  col-md-6">
                                        <label>评价内容</label>
                                        <%--<input id="jingdianLiuyanContentupload" name="file" type="file">--%>
                                        <script id="jingdianLiuyanContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var jingdianLiuyanContentUe = UE.getEditor('jingdianLiuyanContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="jingdianLiuyanContent" id="jingdianLiuyanContent-input">
                                    </div>
                                    <div class="form-group  col-md-6">
                                        <label>回复内容</label>
                                        <%--<input id="replyContentupload" name="file" type="file">--%>
                                        <script id="replyContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var replyContentUe = UE.getEditor('replyContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="replyContent" id="replyContent-input">
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "jingdianLiuyan";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
        <!-- 级联表的下拉框数组 -->
    var jingdianOptions = [];
    var yonghuOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#jingdianLiuyanContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('jingdianLiuyanContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


        $('#replyContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('replyContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
           if($("#jingdianId") !=null){
               var jingdianId = $("#jingdianId").val();
               if(jingdianId == null || jingdianId =='' || jingdianId == 'null'){
                   alert("景点不能为空");
                   return;
               }
           }
           if($("#yonghuId") !=null){
               var yonghuId = $("#yonghuId").val();
               if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
                   alert("用户不能为空");
                   return;
               }
           }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';
            }
            httpJson("jingdianLiuyan/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addjingdianLiuyan');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        <!-- 查询级联表的所有列表 -->
        function jingdianSelect() {
            //填充下拉框选项
            http("jingdian/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    jingdianOptions = res.data.list;
                }
            });
        }

        function jingdianSelectOne(id) {
            http("jingdian/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                jingdianShowImg();
                jingdianShowVideo();
                jingdianDataBind();
            }
        });
        }
        function yonghuSelect() {
            //填充下拉框选项
            http("yonghu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuOptions = res.data.list;
                }
            });
        }

        function yonghuSelectOne(id) {
            http("yonghu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yonghuShowImg();
                yonghuShowVideo();
                yonghuDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->

        function initializationjingdianSelect() {
            var jingdianSelect = document.getElementById('jingdianSelect');
            if(jingdianSelect != null && jingdianOptions != null  && jingdianOptions.length > 0 ) {
                for (var i = 0; i < jingdianOptions.length; i++) {
                        jingdianSelect.add(new Option(jingdianOptions[i].jingdianName, jingdianOptions[i].id));
                }

                $("#jingdianSelect").change(function(e) {
                        jingdianSelectOne(e.target.value);
                });
            }

        }

        function initializationyonghuSelect() {
            var yonghuSelect = document.getElementById('yonghuSelect');
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                        yonghuSelect.add(new Option(yonghuOptions[i].yonghuName, yonghuOptions[i].id));
                }

                $("#yonghuSelect").change(function(e) {
                        yonghuSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->
        <!--  级联表的下拉框回显  -->
            var jingdianSelect = document.getElementById("jingdianSelect");
            if(jingdianSelect != null && jingdianOptions != null  && jingdianOptions.length > 0 ) {
                for (var i = 0; i < jingdianOptions.length; i++) {
                    if (jingdianOptions[i].id == ruleForm.jingdianId) {//下拉框value对比,如果一致就赋值汉字
                        jingdianSelect.options[i+1].selected = true;
                        $("#jingdianSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yonghuSelect = document.getElementById("yonghuSelect");
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                    if (yonghuOptions[i].id == ruleForm.yonghuId) {//下拉框value对比,如果一致就赋值汉字
                        yonghuSelect.options[i+1].selected = true;
                        $("#yonghuSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.jingdianLiuyanContent != null && ruleForm.jingdianLiuyanContent != 'null' && ruleForm.jingdianLiuyanContent != '' /*&& $("#jingdianLiuyanContentupload").length>0*/) {

            var jingdianLiuyanContentUeditor = UE.getEditor('jingdianLiuyanContentEditor');
            jingdianLiuyanContentUeditor.ready(function () {
                var mes = '' + ruleForm.jingdianLiuyanContent;
                jingdianLiuyanContentUeditor.setContent(mes);
                jingdianLiuyanContentUeditor.setDisabled('fullscreen');
            });
        }
        // if (ruleForm.replyContent != null && ruleForm.replyContent != 'null' && ruleForm.replyContent != '' && $("#replyContentupload").length>0) {

            var replyContentUeditor = UE.getEditor('replyContentEditor');
            replyContentUeditor.ready(function () {
                var mes = '';
                if( ruleForm.replyContent != null){
                    var mes = '' + ruleForm.replyContent;
                }
                replyContentUeditor.setContent(mes);
            });
        // }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        // if($("#jingdianLiuyanContentupload").length>0) {
            var jingdianLiuyanContentEditor = UE.getEditor('jingdianLiuyanContentEditor');
            if (jingdianLiuyanContentEditor.hasContents()) {
                $('#jingdianLiuyanContent-input').attr('value', jingdianLiuyanContentEditor.getPlainTxt());
            }
        // }
        // if($("#replyContentupload").length>0) {
            var replyContentEditor = UE.getEditor('replyContentEditor');
            if (replyContentEditor.hasContents()) {
                $('#replyContent-input').attr('value', replyContentEditor.getPlainTxt());
            }
        // }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addjingdianLiuyan');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                jingdianId: "required",
                yonghuId: "required",
                jingdianLiuyanContent: "required",
                replyContent: "required",
                insertTime: "required",
            },
            messages: {
                jingdianId: "景点不能为空",
                yonghuId: "用户不能为空",
                jingdianLiuyanContent: "评价内容不能为空",
                replyContent: "回复内容不能为空",
                insertTime: "评价时间不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addjingdianLiuyan = window.sessionStorage.getItem("addjingdianLiuyan");
        if (addjingdianLiuyan != null && addjingdianLiuyan != "" && addjingdianLiuyan != "null") {
            window.sessionStorage.removeItem('addjingdianLiuyan');
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("jingdianLiuyan/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#insertTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        jingdianDataBind();
        yonghuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#jingdianId").val(ruleForm.jingdianId);
        $("#yonghuId").val(ruleForm.yonghuId);
        $("#jingdianLiuyanContent").val(ruleForm.jingdianLiuyanContent);
        $("#replyContent").val(ruleForm.replyContent);
        $("#insertTime-input").val(ruleForm.insertTime);

    }
    <!--  级联表的数据回显  -->
    function jingdianDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#jingdianId").val(ruleForm.id);

        $("#jingdianName").val(ruleForm.jingdianName);
        $("#jingdianValue").val(ruleForm.jingdianValue);
        $("#jingdianDengjiValue").val(ruleForm.jingdianDengjiValue);
        $("#jingdianTese").val(ruleForm.jingdianTese);
        $("#jingdianLuxian").val(ruleForm.jingdianLuxian);
        $("#jingdianContent").val(ruleForm.jingdianContent);
        $("#jingdianNewMoney").val(ruleForm.jingdianNewMoney);
    }

    function yonghuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yonghuId").val(ruleForm.id);

        $("#yonghuName").val(ruleForm.yonghuName);
        $("#yonghuPhone").val(ruleForm.yonghuPhone);
        $("#yonghuIdNumber").val(ruleForm.yonghuIdNumber);
        $("#sexValue").val(ruleForm.sexValue);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        jingdianShowImg();
        yonghuShowImg();
    }


    <!--  级联表的图片  -->

    function jingdianShowImg() {
        $("#jingdianPhotoImg").attr("src",ruleForm.jingdianPhoto);
    }


    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        jingdianShowVideo();
        yonghuShowVideo();
    }


    <!--  级联表的视频  -->

    function jingdianShowVideo() {
        $("#jingdianPhotoV").attr("src",ruleForm.jingdianPhoto);
    }

    function yonghuShowVideo() {
        $("#yonghuPhotoV").attr("src",ruleForm.yonghuPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            jingdianSelect();
            yonghuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            <!--  初始化级联表的下拉框  -->
            initializationjingdianSelect();
            initializationyonghuSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') != '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>