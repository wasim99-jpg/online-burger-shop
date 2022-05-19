package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.LoginStaffBean;
import com.mvc.dao.LoginStaffDao;

public class LoginStaffServlet extends HttpServlet 
{
    public LoginStaffServlet()
    {}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
    
    String staffuserName = request.getParameter("STAFF_EMAIL");
    String staffpassword = request.getParameter("STAFF_PASS");
    
    LoginStaffBean loginStaffBean = new LoginStaffBean();
    
    loginStaffBean.setStaffuserName(staffuserName);
    loginStaffBean.setStaffpassword(staffpassword);
    
    LoginStaffDao loginStaffDao = new LoginStaffDao();
    
    String staffValidate = loginStaffDao.authenticateStaff(loginStaffBean);
    String Staffuserid = loginStaffDao.Staffident(loginStaffBean);
    
    if(staffValidate.equals("SUCCESS"))
    {
        request.setAttribute("userName",staffuserName);
        request.setAttribute("staffId",Staffuserid);
        HttpSession session = request.getSession(true);
        session.setAttribute("userName",staffuserName);
        session.setAttribute("staffId",Staffuserid);
        request.getRequestDispatcher("/Staffindex.jsp").forward(request,response);
    }
    else
    {
        request.setAttribute("errMessage",staffValidate);
        request.getRequestDispatcher("/Stafflogin.jsp").forward(request,response);
    }
}
}