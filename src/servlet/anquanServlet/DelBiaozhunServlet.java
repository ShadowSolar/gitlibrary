package servlet.anquanServlet;

import dao.BiaozhunDao;
import dao.BiaozhunDaoImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delBiaozhunServlet")
public class DelBiaozhunServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        //获取表单参数
        String xuhao = request.getParameter("xuhao");
        //调用Service操作
        BiaozhunDao dao = new BiaozhunDaoImpl();
        dao.delBiaozhun(xuhao);
        //重定向到搜索
        response.sendRedirect(request.getContextPath()+"/findBiaozhunServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        this.doPost(request, response);
    }
}