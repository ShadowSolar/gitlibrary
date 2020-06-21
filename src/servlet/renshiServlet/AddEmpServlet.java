package servlet.renshiServlet;

import bean.Biaozhun;
import bean.Emp;
import dao.EmpDao;
import dao.EmpDaoImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;


@WebServlet("/addEmpServlet")
public class AddEmpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        //获取调令参数
        //封装对象
        Map<String, String[]> map = request.getParameterMap();
        Emp emp = new Emp();
        try {
            BeanUtils.populate(emp, map);
        } catch (IllegalAccessException | InvocationTargetException illegalAccessException) {
            illegalAccessException.printStackTrace();
        }
        //调用Dao操作
        EmpDao dao = new EmpDaoImpl();
        dao.addEmp(emp);
        //转发到jsp
        response.sendRedirect(request.getContextPath()+"/findAllEmpServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        this.doPost(request, response);
    }
}