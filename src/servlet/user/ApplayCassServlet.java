package servlet.user;

import bean.Company;
import bean.Job;
import dao.CompanyDao;
import dao.JobDao;
import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/applaycass")
public class ApplayCassServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("applayjobid");
        int applayjobid = Integer.parseInt(id);
        String applayjobname = request.getParameter("applayjobname");
        String uid = request.getParameter("applayuserid");
        int applayuserid = Integer.parseInt(uid);
        JobDao jobDao = new JobDao();
        Job job = new Job();
        int applaycomid = jobDao.findJobByJobId(applayjobid).getCompanyId();
        Company company = new Company();
        CompanyDao companyDao = new CompanyDao();
        String applaycompany = companyDao.getCompanyById(applaycomid).getCompanyName();
        int applayjobstatus = 1;
        UserDao userDao = new UserDao();
        int num = userDao.addapplay(applayjobid,applayjobname,applayuserid,applaycompany,applayjobstatus);
        if(num>0){
            request.setAttribute("applayError","申请成功");
            request.getRequestDispatcher("user/recruit/company.jsp").forward(request,response);
        }else{
            request.setAttribute("applayError","申请失败");
            request.getRequestDispatcher("user/recruit/company.jsp").forward(request,response);
        }


    }
}
