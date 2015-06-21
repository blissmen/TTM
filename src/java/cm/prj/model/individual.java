/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package cm.prj.model;

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
//Individual List: A list which gives us details about subjects and sections allocated to a faculty member
@WebServlet(name = "individuall#!/page_PARTNERS", urlPatterns = {"/individuall"})
public class individual extends HttpServlet{
    private String LIST_USER="/index.jsp";
    private Object dat;
    private ArrayList Name;
    private ArrayList Lecturer_ID;
    private ArrayList name=new ArrayList();
   
     /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Working");
        String Code = request.getParameter("CourseCode");
        Functions function = new Functions();
        
        try {
                Lecturer_ID= function.getTeacherAttribute("teacher_id","teachers_has_courses",Code);
                System.out.println(Lecturer_ID.toString()); 
                for(Object Id:Lecturer_ID)
                 {
                   name.add(function.getAttribute("name", "teachers",Id.toString()));
                 }
        
        } catch (SQLException ex) {
            System.out.println("Eror getting Lecturer information"); 
        
        }
        try {
            Name=function.getCurseAttribute("name","courses",Code);
        } catch (SQLException ex) {
            System.out.println("Error getting Courses Attribute "+ex.getMessage()+" "+ex.getCause());    
        }
       
         RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
            request.setAttribute("record", dat);
            request.setAttribute("techer", name);
            request.setAttribute("nameC", Name);
            view.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
