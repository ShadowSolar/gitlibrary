package servlet.renshiServlet;

import bean.Emp;
import dao.EmpDao;
import dao.EmpDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/findEmpByTimeServlet")
public class FindEmpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        //获取表单参数
        String option1 = request.getParameter("option1");
        String option2 = request.getParameter("option2");
        String option3 = request.getParameter("option3");
        String option4 = request.getParameter("option4");
        String[] option = new String[]{option1,option2,option3,option4};
        String time = request.getParameter("time");
        //调用Dao操作
        EmpDao dao = new EmpDaoImpl();
        List<Emp> emp = dao.findEmpByOption(option);
        //储存到request域
        request.setAttribute("emp", emp);
        //转发到jsp
        request.getRequestDispatcher("/xxx.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}