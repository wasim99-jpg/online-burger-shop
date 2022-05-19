package com.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mvc.bean.LoginStaffBean;
import com.mvc.util.DBConnection;

public class LoginStaffDao {

    public String authenticateStaff(LoginStaffBean loginStaffBean) 
    {
        String staffuserName = loginStaffBean.getStaffuserName();
        String staffpassword = loginStaffBean.getStaffpassword();

        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        String staff_username = "";
        String staff_password = "";

        try 
        {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select STAFF_EMAIL,STAFF_PASS from APP.STAFF");

            while (resultSet.next()) 
            {
                staff_username = resultSet.getString("STAFF_EMAIL");
                staff_password = resultSet.getString("STAFF_PASS");

                if (staffuserName.equals(staff_username) && staffpassword.equals(staff_password)) 
                {
                    return "SUCCESS";
                }
            }
        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
        return "Invalid user credentials";
    }

    public String Staffident(LoginStaffBean loginStaffBean) 
    {
        String userName = loginStaffBean.getStaffuserName();
        String password = loginStaffBean.getStaffpassword();

        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        String staff_userid = "";
        
        
        try 
        {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select STAFF from APP.STAFF WHERE STAFF_EMAIL='" + userName + "' AND STAFF_PASS='" + password + "'");

            while (resultSet.next()) 
            {

                staff_userid = resultSet.getString("STAFFID");

            }
            return staff_userid;
        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
        return "Invalid";
    }

}
