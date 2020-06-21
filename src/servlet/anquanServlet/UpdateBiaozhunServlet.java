package servlet.anquanServlet;

import bean.Biaozhun;
import dao.BiaozhunDao;
import dao.BiaozhunDaoImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/updateBiaozhunServlet")
public class UpdateBiaozhunServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        //获取表单参数
        String[] xuhaos = request.getParameterValues("xuhao");
        String[] biaozhunnames = request.getParameterValues("biaozhunname");
        String[] lb1s = request.getParameterValues("lb1");
        String[] lb2s = request.getParameterValues("lb2");
        String[] lb3s = request.getParameterValues("lb3");
        String[] lb4s = request.getParameterValues("lb4");
        String[] lb5s = request.getParameterValues("lb5");
        String[] lb6s = request.getParameterValues("lb6");
        String[] lb7s = request.getParameterValues("lb7");
        String[] lb8s = request.getParameterValues("lb8");
        String[] lb9s = request.getParameterValues("lb9");
        String[] lb10s = request.getParameterValues("lb10");
        String[] lb11s = request.getParameterValues("lb11");
        String[] lb12s = request.getParameterValues("lb12");
        String[] lb13s = request.getParameterValues("lb13");
        String[] lb14s = request.getParameterValues("lb14");
        String[] lb15s = request.getParameterValues("lb15");
        BiaozhunDao dao = new BiaozhunDaoImpl();
        for (int i = 0; i < xuhaos.length; i++) {
            Biaozhun bz = new Biaozhun(xuhaos[i],biaozhunnames[i],lb1s[i],lb2s[i],lb3s[i],lb4s[i],lb5s[i],lb6s[i],lb7s[i],lb8s[i],lb9s[i],lb10s[i],lb11s[i],lb12s[i],lb13s[i],lb14s[i],lb15s[i]);
            dao.updBiaozhun(bz);
        }
        //调用Service操作
        //重定向到搜索
        response.sendRedirect(request.getContextPath()+"/findBiaozhunServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        this.doPost(request, response);
    }
}