<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<% response.setStatus(HttpServletResponse.SC_OK);%>
<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="format-detection" content="telephone=no">
    <meta charset="UTF-8">

    <meta name="description" content="Violate Responsive Admin Template">
    <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

    <title>三棵树车辆段_车电车间</title>

    <!-- CSS -->
    <link href="${pageContext.request.contextPath}/manage/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/manage/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/manage/css/generics.css" rel="stylesheet">
</head>
<body id="skin-blur-violate">
<section id="error-page" class="tile">
    <h1 class="m-b-10">ERROR 500</h1>
    <p>对不起，您输入的信息有误，请重新试一下。。。注：车次信息必须区分大小写，且须标明完整车次</p>
    <a class="underline" href="" style="display: none">Back to previous page</a> or <a class="underline" href="${pageContext.request.contextPath}/JYSY/index.jsp">回到首页</a>
</section>

</body>
</html>
