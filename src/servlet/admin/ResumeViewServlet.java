package servlet.admin;

import bean.User;
import dao.JobDao;
import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/resumeView")
public class ResumeViewServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("userid");
        int userid = Integer.parseInt(id);
        UserDao userdao = new UserDao();
        User user = userdao.findUserById(userid);
        if (user != null) {
            request.setAttribute("User", user);
            request.getRequestDispatcher("admin/page/resume/resumeView.jsp").forward(request, response);
        } else {
            //还没有基本信息
            response.sendRedirect("admin/page/resume/resume.jsp");
        }
    }
}
