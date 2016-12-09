<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <title>M+ 后台主题UI框架 - 主页示例</title>
    <%@include file="../common/commcss.jsp" %>
    <link href="${ctx}/static/plugins/iCheck/icheck.css" rel="stylesheet">

    <link href="${ctx}/static/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
    <link href="${ctx}/static/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet">
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row animated fadeInDown">
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Draggable Events</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="calendar.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="calendar.html#">选项1</a>
                                </li>
                                <li><a href="calendar.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div id='external-events'>
                            <p>可拖动的活动</p>
                            <div class='external-event navy-bg'>确定活动目标</div>
                            <div class='external-event navy-bg'>各部门职责及分工</div>
                            <div class='external-event navy-bg'>案例分享</div>
                            <div class='external-event navy-bg'>xxx</div>
                            <p class="m-t">
                                <input type='checkbox' id='drop-remove' class="i-checks" checked />
                                <label for='drop-remove'>移动后删除</label>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <h2>FullCalendar</h2> 这是一个jQuery插件，它提供了全尺寸，可拖动，使用Ajax的操作方式，并且可以使用自己的feed格式，如谷歌日历。
                        <p>
                            <a href="http://arshaw.com/fullcalendar/" target="_blank">FullCalendar开发文档</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-9">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>FullCalendar示例 </h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="calendar.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="calendar.html#">选项1</a>
                                </li>
                                <li><a href="calendar.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div id="calendar"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="../common/commjs.jsp" %>
    <script src="${ctx}/static/js/jquery-ui.custom.min.js"></script>
    <script src="${ctx}/static/plugins/iCheck/icheck.min.js"></script>
    <script src="${ctx}/static/plugins/fullcalendar/fullcalendar.min.js"></script>
	<script>
        $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",});$("#external-events div.external-event").each(function(){var d={title:$.trim($(this).text())};$(this).data("eventObject",d);$(this).draggable({zIndex:999,revert:true,revertDuration:0})});var b=new Date();var c=b.getDate();var a=b.getMonth();var e=b.getFullYear();$("#calendar").fullCalendar({header:{left:"prev,next",center:"title",right:"month,agendaWeek,agendaDay"},editable:true,droppable:true,drop:function(g,h){var f=$(this).data("eventObject");var d=$.extend({},f);d.start=g;d.allDay=h;$("#calendar").fullCalendar("renderEvent",d,true);if($("#drop-remove").is(":checked")){$(this).remove()}},events:[{title:"日事件",start:new Date(e,a,1)},{title:"长事件",start:new Date(e,a,c-5),end:new Date(e,a,c-2),},{id:999,title:"重复事件",start:new Date(e,a,c-3,16,0),allDay:false,},{id:999,title:"重复事件",start:new Date(e,a,c+4,16,0),allDay:false},{title:"会议",start:new Date(e,a,c,10,30),allDay:false},{title:"午餐",start:new Date(e,a,c,12,0),end:new Date(e,a,c,14,0),allDay:false},{title:"生日",start:new Date(e,a,c+1,19,0),end:new Date(e,a,c+1,22,30),allDay:false},{title:"打开百度",start:new Date(e,a,28),end:new Date(e,a,29),url:"http://baidu.com/"}],})});
    </script>
</body>

</html>