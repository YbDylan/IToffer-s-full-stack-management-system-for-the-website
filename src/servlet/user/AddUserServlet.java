package servlet.user;

import bean.User;
import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.UUID;

@WebServlet("/saveUser")
@MultipartConfig
public class AddUserServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        User user = (User)request.getSession().getAttribute("user");
        int userId = user.getUserId();
        String userName = request.getParameter("userName");
        String userSex = request.getParameter("userSex");
        String userEmail = request.getParameter("userEmail");
        String userBirthday = request.getParameter("userBirthday");
        String userWork = request.getParameter("userWork");
        String userYear = request.getParameter("userYear");
        String userPhone = request.getParameter("userPhone");
        Part part = request.getPart("uploadImg");
        String oldFileName = part.getSubmittedFileName();
        String typeName = oldFileName.substring(oldFileName.lastIndexOf("."));
        String uuid = UUID.randomUUID().toString();
        String fileName = uuid+typeName;
        String path = request.getServletContext().getRealPath("/");
        part.write(path+"/upload/"+fileName);
        UserDao userDao = new UserDao();
        int num =userDao.updateUserInfo(userName,userSex,userBirthday,userWork,userYear,userPhone,fileName,userEmail,userId);
        if(num>0){
            System.out.println("添加成功");
            response.sendRedirect("findUserById");
        }else{
            request.setAttribute("addError","简历添加失败");
            request.getRequestDispatcher("user/applicant/resumeBasicInfoAdd.jsp").forward(request,response);
        }



    }
}