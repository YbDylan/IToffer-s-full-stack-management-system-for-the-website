package servlet.admin;

import bean.User;
import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/allResume")
public class AllReumeServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        List<User> userlist=userDao.getAllUser();
        if(userlist!=null){
            request.setAttribute("userlist",userlist);
            request.getRequestDispatcher("admin/page/resume/resumeList.jsp").forward(request,response);
        }else{
            //还没有基本信息
            response.sendRedirect("admin/page/main/left.jsp");
        }
    }
}
