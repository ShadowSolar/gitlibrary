package servlet.cailiaoServlet;

import bean.Biaozhun;
import bean.Emp;
import dao.BiaozhunDao;
import dao.BiaozhunDaoImpl;
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

@WebServlet("/calcCailiaoBiaoServlet")
public class CalcCailiaoBiaoServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        //调用BiaozhunService完成查询
        EmpDao empDao = new EmpDaoImpl();
        BiaozhunDao bzDao = new BiaozhunDaoImpl();



        List<String> lb1_list = new LinkedList<>();
        List<String> lb2_list = new LinkedList<>();
        List<String> lb3_list = new LinkedList<>();
        List<String> lb4_list = new LinkedList<>();
        List<String> lb5_list = new LinkedList<>();
        List<String> lb6_list = new LinkedList<>();
        List<String> lb7_list = new LinkedList<>();
        List<String> lb8_list = new LinkedList<>();
        List<String> lb9_list = new LinkedList<>();
        List<String> lb10_list = new LinkedList<>();
        List<String> lb11_list = new LinkedList<>();
        List<String> lb12_list = new LinkedList<>();
        List<String> lb13_list = new LinkedList<>();
        List<String> lb14_list = new LinkedList<>();
        List<String> lb15_list = new LinkedList<>();



        //查询标准1-35

        List<Biaozhun> bzs = bzDao.findBiaozhun();
        //查询这一标准的人1
        List<Emp> emps = empDao.findEmpByBiaozhun();
        //看这些人需要发放哪些劳保
        //把这一标准的人的记录+上发放年限，未发放就设置为应该发放。



/*
查询标准数，以及各自的数目。
"SELECT * FROM tb_emp"

"SELECT * FROM tb_emp where biaozhun = 标准1"




    List<String> biaozhuns = "SELECT DISTINCT biaozhun FROM tb_emp";
    List<int> 数目 = "SELECT COUNT(biaozhuns.get(i)) FROM tb_emp";
        查询标准list<String> 1-35
        SELECT * FROM tb_emp where biaozhun = 1-35;

*/
        //储存到request域
        request.setAttribute("bzs",bzs);
        //转发到jsp
        request.getRequestDispatcher("/xxx.jsp").forward(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}