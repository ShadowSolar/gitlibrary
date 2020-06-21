<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <!-- 导入CSS、JS-->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/assets/javascript/jquery-2.1.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/javascript/bootstrap/bootstrap.min.js"></script>
    <title>修改用户</title>
<%
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String roles = request.getParameter("roles");
        String workplace = request.getParameter("workplace");
        String others = request.getParameter("others");
%>
</head>
<body>
<div class="container">
    <center><h3>添加新用户</h3></center>

    <form action="${pageContext.request.contextPath}/updateUserServlet" method="post">

        <input type="hidden" name="id" value="<%=id%>">

        <div class="form-group">
            <label for="username">用户名：</label>
            <input type="text" class="form-control" id="username" name="username" value="<%=username%>">
        </div>

        <div class="form-group">
            <label for="password">密  码：</label>
            <input type="text" class="form-control" id="password" name="password" value="<%=password%>">
        </div>

        <div class="form-group">
            <label>权限：</label>
            <br>
            <input id="r1" type="radio" name="roles" value="1"/>库检计划调度
            <br>
            <input id="r2" type="radio" name="roles" value="2"/>库检值班员
            <br>
            <input id="r3" type="radio" name="roles" value="3"/>车电值班员
            <br>
            <input id="r4" type="radio" name="roles" value="4"/>乘务值班员
            <br>
            <input id="r5" type="radio" name="roles" value="5"/>客运值班员
            <br>
            <input id="r6" type="radio" name="roles" value="6"/>客车库值班员
            <br>
            <input id="r7" type="radio" name="roles" value="7"/>整备值班员
        </div>

        <div class="form-group">
            <label>归属：</label>
            <input id="l1" type="radio" name="workplace" value="三辆"/>三辆
            <input id="l2" type="radio" name="workplace" value="哈运用"/>哈运用
            <input id="l3" type="radio" name="workplace" value="牡运用"/>牡运用
            <input id="l4" type="radio" name="workplace" value="绥运用"/>绥运用
            <input id="l5" type="radio" name="workplace" value="佳运用"/>佳运用
        </div>

        <div class="form-group">
            <label for="others">备注：</label>
            <input type="text" class="form-control" id="others" name="others" value="<%=others%>">
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-success" type="submit" value="提交" />
            <input class="btn btn-primary" type="reset" value="重置" />
            <input class="btn btn-default" type="button" id="re" value="返回" />
        </div>
    </form>
</div>
<script>
    var roless="<%=roles%>";
    var rolesss = roless.substr(roless.length-1,roless.length);
    switch(rolesss) {
        case "1":
            $("#r1").attr("checked","checked")
            ;break;
        case "2":
            $("#r2").attr("checked","checked")
            ;break;
        case "3":
            $("#r3").attr("checked","checked")
            ;break;
        case "4":
            $("#r4").attr("checked","checked")
            ;break;
        case "5":
            $("#r5").attr("checked","checked")
            ;break;
        case "6":
            $("#r6").attr("checked","checked")
            ;break;
        case "7":
            $("#r7").attr("checked","checked")
            ;break;
        default:
            console.log("未选择");
            break;
    }
    switch("<%=workplace%>") {
        case "三辆":
            $("#l1").attr("checked","checked")
            ;break;
        case "哈运用":
            $("#l2").attr("checked","checked")
            ;break;
        case "牡运用":
            $("#l3").attr("checked","checked")
            ;break;
        case "绥运用":
            $("#l4").attr("checked","checked")
            ;break;
        case "佳运用":
            $("#l5").attr("checked","checked")
            ;break;
        default:
            alert(workplace);
            break;
    }
    $("#re").click(function(event){
        location.href="${pageContext.request.contextPath}/findUserServlet";
    })
</script>
</body>
</html>