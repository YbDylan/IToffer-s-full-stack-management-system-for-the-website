package servlet.admin;

import bean.Admin;
import dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateAdminStatus")
public class UpdateAdminStatusServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //修改状态  接受adminId  你要修改的状态  adminStatus
        String id= request.getParameter("adminId");
        int adminId = Integer.parseInt(id);
        //判断当前id是否是登录人id
        //登录人不能操作自己的状态
        Admin loginAdmin = (Admin)request.getSession().getAttribute("admin");
        int loginId = loginAdmin.getAdminId();
        if(loginId == adminId){
            request.setAttribute("statusError","登录人不能操作自身状态");
            request.getRequestDispatcher("admin/page/main/index.jsp").forward(request,response);
        }else{
            String status = request.getParameter("adminStatus");
            int adminStatus = Integer.parseInt(status);
            AdminDao adminDao = new AdminDao();
            int num = adminDao.updateAdminStatus(adminStatus,adminId);
            if(num>0){
                //状态修改成功  重新展示  跳转到展示的处理器即可
                response.sendRedirect("findAdmin");
            }
        }

    }
}
