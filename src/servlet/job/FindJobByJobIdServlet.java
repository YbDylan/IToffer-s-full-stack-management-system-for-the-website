package servlet.job;

import bean.Job;
import dao.JobDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/findJobByJobId")
public class FindJobByJobIdServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String jid = request.getParameter("jobId");
        int jobId = Integer.parseInt(jid);
        JobDao jobDao = new JobDao();
        Job job = jobDao.findJobByJobId(jobId);
        request.setAttribute("job",job);
        request.getRequestDispatcher("user/recruit/job.jsp").forward(request,response);
    }
}
