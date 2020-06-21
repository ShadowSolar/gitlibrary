package servlet.renshiServlet;

import dao.EmpDao;
import dao.EmpDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteEmpServlet")
public class DelEmpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        //获取表单参数
        String no = request.getParameter("no");
        //调用Dao操作
        EmpDao dao = new EmpDaoImpl();
        dao.delEmp(no);
        //重定向
        response.sendRedirect(request.getContextPath()+"/findAllEmpServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}