package servlet.renshiServlet;

import bean.Emp;
import dao.EmpDao;
import dao.EmpDaoImpl;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/addAllEmpServlet")
public class AddAllEmpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        //获取调令参数

        //调用Dao操作
        EmpDao dao = new EmpDaoImpl();
        for(Emp emp : list){
            dao.addEmp(emp);
        }
        //转发到jsp
        response.sendRedirect(request.getContextPath()+"/findAllEmpServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        this.doPost(request, response);
    }
}