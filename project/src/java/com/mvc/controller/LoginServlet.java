package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.LoginBean;
import com.mvc.dao.LoginDao;

public class LoginServlet extends HttpServlet 
{
    public LoginServlet()
    {}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
    
    String userName = request.getParameter("EMAIL");
    String password = request.getParameter("PASSWORD");
    
    LoginBean loginBean = new LoginBean();
    
    loginBean.setUserName(userName);
    loginBean.setPassword(password);
    
    LoginDao loginDao = new LoginDao();
    
    String userValidate = loginDao.authenticateUser(loginBean);
    String userid = loginDao.Userident(loginBean);
    
    if(userValidate.equals("SUCCESS"))
    {
        request.setAttribute("userName",userName);
        request.setAttribute("userId",userid);
        HttpSession session = request.getSession(true);
        session.setAttribute("userName",userName);
        session.setAttribute("userId",userid);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
    else
    {
        request.setAttribute("errMessage",userValidate);
        //JOptionPane.showMessageDialog(null,"error password/username");
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }
}}


    