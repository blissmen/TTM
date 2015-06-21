/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cm.prj.model;

import cm.prj.controller.User;
import cm.prj.db.Functions;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Yanick
 */
@WebServlet(name = "block#!/page_PROJECTS", urlPatterns = {"/block"})
public class block extends HttpServlet{
    Functions function = new Functions();
    private String LIST_USER;
    private ArrayList fetchTeacher;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         LIST_USER="/index.jsp";
          User usr = new User();
          System.out.println("the status is: "+usr.getStatus());
         try {
              if(User.getStatus()<4)
              {
                  String period = request.getParameter("period");
                  fetchTeacher= function.getAllTeachers(period);
                  
                  
                  System.out.println(fetchTeacher.toString());   
                   RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
            request.setAttribute("natte", fetchTeacher); 
            System.out.println(fetchTeacher.toString());
            view.forward(request, response);
    
              }
              else{
                  
                  RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
                  request.setAttribute("message", "USER NOT ALLOWED TO ACCESS THIS SERVICE");
                  //System.out.println(fetchTeacher.toString());
                  view.forward(request, response);
             }
        } catch (SQLException ex) {
            //Logger.getLogger(block.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error in getting slots");
             RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
            request.setAttribute("message", "Error See administrator"); 
            //System.out.println(fetchTeacher.toString());
            view.forward(request, response);
    
        }
       }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    
}
