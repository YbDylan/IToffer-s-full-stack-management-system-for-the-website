package servlet.company;

import bean.Admin;
import bean.Company;
import dao.AdminDao;
import dao.CompanyDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//修改的数据回显  根据要修改数据的id  反查数据库  得到该数据的完整信息   回显到修改页面
@WebServlet("/findCompanyById")
public class FindCompanyByIdServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("companyId");
        int companyId = Integer.parseInt(id);
        CompanyDao companyDao = new CompanyDao();
        Company company = companyDao.getCompanyById(companyId);
        request.setAttribute("company",company);
        request.getRequestDispatcher("admin/page/company/companyUpdate.jsp").forward(request,response);
    }
}
