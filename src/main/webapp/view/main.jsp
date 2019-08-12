<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%
    String path = request.getContextPath().replace("/", "");
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + "/" + path;
%>
<%
    Random random = new Random();
    int rannum = (int) (random.nextDouble() * (99999 - 10000 + 1)) + 10000;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
        <script type="text/javascript"src="<%=basePath%>/jquery-1.8.3.min.js"></script>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Orange</title>
</head>
<body>
<input type="hidden" id="path" value="<%=basePath%>">
<div id= "username"> </div>
</body>
<script type="text/javascript">
    var path = $('#path').val();
    var id = 1;
    $.ajax({
        type:"post",
        data:{"id":id},
        url:path+"/queryUser/user",
        dataType:"json",
        success:function (res) {
            alert("成功!");
            console.log(res)
            $(res).each(function (index) {
                console.log(res[index].username);
                $('#username').html(res[index].username);
            })
        },
        error:function (err) {
            console.log(err)
        }
    });
</script>
</html>
