<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%application.setAttribute("path", request.getContextPath());%>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>用户名单</title>
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/assets/javascript/jquery-2.1.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/javascript/bootstrap/bootstrap.min.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>
</head>
<body>
${bblist}
${bblist[0]}
${bblist[1]}
${bblist[2]}

<%--input--%>

<%--input--%>

<%--input----input--%>


<%--展示表格——标题--%>
<table border="1" class="table table-bordered table-hover">
    <tr class="success">
        <th colspan="10">人员信息</th>
        <th colspan="17">尺码</th>
        <th colspan="15">发放记录</th>
    </tr>
    <tr class="success">
        <th>序号</th>
        <th>工号	</th>
        <th>姓名	</th>
        <th>身份证号</th>
        <th>首字母</th>
        <th>部门</th>
        <th>班组</th>
        <th>职务</th>
        <th>发放标准</th>
        <th>状态</th>
        <th>性别</th>
        <th>劳保标志</th>
        <th>春秋防护服</th>
        <th>夏季防护服</th>
        <th>防油鞋</th>
        <th>防烫、砸、扎鞋</th>
        <th>防水胶靴</th>
        <th>防护帽安全帽</th>
        <th>分身雨衣</th>
        <th>棉短大衣</th>
        <th>防寒裤</th>
        <th>防寒皮鞋</th>
        <th>防寒帽</th>
        <th>防寒手套</th>
        <th>绝缘手套</th>
        <th>单绝缘鞋</th>
        <th>棉绝缘鞋</th>
        <th>春秋防护服</th>
        <th>夏季防护服</th>
        <th>防油鞋</th>
        <th>防烫、砸、扎鞋</th>
        <th>防水胶靴</th>
        <th>防护帽安全帽</th>
        <th>分身雨衣</th>
        <th>棉短大衣</th>
        <th>防寒裤</th>
        <th>防寒皮鞋</th>
        <th>防寒帽</th>
        <th>防寒手套</th>
        <th>绝缘手套</th>
        <th>单绝缘鞋</th>
        <th>棉绝缘鞋</th>
    </tr>
<%--展示表格——数据--%>

    <c:forEach items="${emps}" var="emp" varStatus="s">
        <tr>
            <td>${s.count}</td>
            <td>${emp.no}</td>
            <td>${emp.name}</td>
            <td>${emp.id}</td>
            <td>${emp.cap}</td>
            <td>${emp.bumen}</td>
            <td>${emp.banzu}</td>
            <td>${emp.zhiwu}</td>
            <td>${emp.biaozhun}</td>
            <td>${emp.state}</td>
            <td>${emp.male}</td>
            <td>${emp.sign}</td>
            <td>${emp.size_lb1}</td>
            <td>${emp.size_lb2}</td>
            <td>${emp.size_lb3}</td>
            <td>${emp.size_lb4}</td>
            <td>${emp.size_lb5}</td>
            <td>${emp.size_lb6}</td>
            <td>${emp.size_lb7}</td>
            <td>${emp.size_lb8}</td>
            <td>${emp.size_lb9}</td>
            <td>${emp.size_lb10}</td>
            <td>${emp.size_lb11}</td>
            <td>${emp.size_lb12}</td>
            <td>${emp.size_lb13}</td>
            <td>${emp.size_lb14}</td>
            <td>${emp.size_lb15}</td>
            <td>${emp.lb1}</td>
            <td>${emp.lb2}</td>
            <td>${emp.lb3}</td>
            <td>${emp.lb4}</td>
            <td>${emp.lb5}</td>
            <td>${emp.lb6}</td>
            <td>${emp.lb7}</td>
            <td>${emp.lb8}</td>
            <td>${emp.lb9}</td>
            <td>${emp.lb10}</td>
            <td>${emp.lb11}</td>
            <td>${emp.lb12}</td>
            <td>${emp.lb13}</td>
            <td>${emp.lb14}</td>
            <td>${emp.lb15}</td>
        </tr>
    </c:forEach>

</table>

<script>
    function deleteEmp(no){
        //用户安全提示
        if(confirm("您确定要删除吗？")){
            //访问路径
            location.href="${pageContext.request.contextPath}/delEmpServlet?no="+no;
        }
    }
</script>
</body>
</html>