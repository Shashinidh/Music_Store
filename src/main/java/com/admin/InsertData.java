package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


 
@WebServlet("/InsertData")
public class InsertData extends HttpServlet {
  private static final long serialVersionUID = 1L;

  
    public InsertData() {
        super();
        //Auto-generated constructor stub
    }


  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  //Auto-generated method stub
	  RequestDispatcher dis = request.getRequestDispatcher("insertmusic.jsp");
	dis.forward(request, response);
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    doGet(request, response);
    PrintWriter out = response.getWriter();
    String mname = request.getParameter("mname");
    String mtype = request.getParameter("mtype");
    String martist = request.getParameter("martist");
   
    
    try {
    	

      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","Kalindu123");
          Statement stmt = con.createStatement();
          stmt.executeUpdate("insert into song (mname,mtype,martist)values('"+mname+"','"+mtype+"','"+martist+"') ");

          
    } catch (ClassNotFoundException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
   
  }

}