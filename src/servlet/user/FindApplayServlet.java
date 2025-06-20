package servlet.user;

import bean.Applayjob;
import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/findApplay")
public class FindApplayServlet extends HttpServlet{
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid = request.getParameter("applayuserid");
        int applayuserid = Integer.parseInt(uid);
        UserDao userDao = new UserDao();
        List<Applayjob>  ApplayjobList = userDao.getAllApplayjob(applayuserid);
        request.setAttribute("applayjobList", ApplayjobList);
        System.out.println("ApplayjobList = " + ApplayjobList);
        request.getRequestDispatcher("user/applicant/jobApply.jsp").forward(request, response);
    }
}
