package servlet.anquanServlet;

import bean.Biaozhun;
import dao.BiaozhunDao;
import dao.BiaozhunDaoImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/addBiaozhunServlet")
public class AddBiaozhunServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        //获取表单参数
        Map<String, String[]> map = request.getParameterMap();
        //封装User对象
        Biaozhun bz = new Biaozhun();
        try {
            BeanUtils.populate(bz, map);
        } catch (IllegalAccessException | InvocationTargetException illegalAccessException) {
            illegalAccessException.printStackTrace();
        }
        //调用Service操作
        BiaozhunDao dao = new BiaozhunDaoImpl();
        dao.addBiaozhun(bz);
        //重定向到搜索
        response.sendRedirect(request.getContextPath()+"/findBiaozhunServlet");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        this.doPost(request, response);
    }
}