package com.admin;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReadData")
public class ReadData extends HttpServlet {
  private static final long serialVersionUID = 1L;
       

    public ReadData() {
  
        // Auto-generated constructor stub
    }


  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  //Auto-generated method stub
    response.getWriter().append("Served at: ").append(request.getContextPath());
  }


  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  //Auto-generated method stub
    doGet(request, response);
    String sid = request.getParameter("sid");
   

    try {
    	
    	
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","Kalindu123");
          Statement stmt = con.createStatement();
          stmt.executeUpdate("select * from song where sid ='"+sid+"'");
          
    } catch (ClassNotFoundException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
   
  }

}