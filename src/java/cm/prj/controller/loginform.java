/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cm.prj.controller;

import java.io.IOException;
import java.sql.SQLException;
 
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USER
 */
@WebServlet(name = "loginform#!/page_ABOUT", urlPatterns = {"/loginform"})
public class loginform extends HttpServlet{
    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/index.jsp";
    private static String LIST_USER = "/index.jsp";
    private String Username;
    public loginform() {
    super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
       
                 User user = new User();
            
//user.setFirstName(request.getParameter("firstName"));
//user.setLastName(request.getParameter("lastName"));
            Username=    request.getParameter("user_name");
            String password = request.getParameter("passwd");
            
            if(user.Verify(Username,password)){
               //RequestDispatcher loggedIn =  request.getRequestDispatcher(LIST_USER);
                
                 HttpSession session = request.getSession(false);
            session.setAttribute("user", Username);
                User.setUsername(Username);
                 RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
            request.setAttribute("message", Username);
            view.forward(request, response);
            session.setMaxInactiveInterval(30*60);
               Cookie loginCookie = new Cookie("user",Username);
           
            response.addCookie(loginCookie);
             
                //loggedIn.forward(request, response);
              
            }else{
            RequestDispatcher view = request.getRequestDispatcher(INSERT_OR_EDIT);
            request.setAttribute("message", "Wrong Username and or Password");
            view.forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(loginform.class.getName()).log(Level.SEVERE, null, ex);
        }
}
}
