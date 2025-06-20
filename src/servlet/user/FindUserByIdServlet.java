package servlet.user;

import bean.User;
import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/findUserById")
public class FindUserByIdServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User LoginUser = (User)request.getSession().getAttribute("user");
        int userId = LoginUser.getUserId();
        UserDao userDao = new UserDao();
        User user = userDao.findUserById(userId);
        if(user.getUserName()!=null){
            request.setAttribute("user",user);
            request.getRequestDispatcher("user/applicant/resume.jsp").forward(request,response);
        }else{
            //还没有基本信息
            response.sendRedirect("user/applicant/resumeBasicInfoAdd.jsp");
        }

    }
}
