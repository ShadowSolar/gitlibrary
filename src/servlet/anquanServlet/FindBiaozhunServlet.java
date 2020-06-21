package servlet.anquanServlet;
import bean.Biaozhun;
import dao.BiaozhunDao;
import dao.BiaozhunDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/findBiaozhunServlet")
public class FindBiaozhunServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        //调用BiaozhunService完成查询
        BiaozhunDao dao = new BiaozhunDaoImpl();
        List<Biaozhun> bzs = dao.findBiaozhun();
        //储存到request域
        request.setAttribute("bzs",bzs);
        //转发到jsp
        request.getRequestDispatcher("/xxx.jsp").forward(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}