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
import java.util.LinkedList;
import java.util.List;

@WebServlet("/findAllEmpServlet")
public class FindAllEmpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        //调用Dao操作
        EmpDao dao = new EmpDaoImpl();
        List<Emp> emps = dao.findAll();

        List<String> bumenNames = dao.findBumenNames();
        List<String> bblist = new LinkedList<>();
        for (int i = 0; i < bumenNames.size(); i++) {
            List<String> banzuNames = dao.findBanzuNames(bumenNames.get(i));
            StringBuilder sb = new StringBuilder(bumenNames.get(i));
            for (int j = 0; j < banzuNames.size(); j++) {
                sb.append("&").append(banzuNames.get(j));
            }
            bblist.add(sb.toString());
        }
        //储存到request域
        request.setAttribute("emps", emps);
        request.setAttribute("bblist",bblist);//二级联动的数据
        //转发到jsp
        request.getRequestDispatcher("/emplist.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}