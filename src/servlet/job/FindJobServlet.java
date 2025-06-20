package servlet.job;

import bean.Job;
import dao.JobDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/findJob")
public class FindJobServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JobDao jobDao = new JobDao();
        List<Job> jobList = jobDao.findJob();
        request.setAttribute("jobList",jobList);
        request.getRequestDispatcher("admin/page/job/jobList.jsp").forward(request,response);
    }
}
