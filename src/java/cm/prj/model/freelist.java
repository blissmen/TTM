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
import javax.servlet.http.HttpSession;


@WebServlet(name = "freelist#!/page_SERVICES", urlPatterns = {"/freelist"})
public class freelist  extends HttpServlet{
    private final String LIST_USER="index.jsp";
  
     /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try 
        {
            
            System.out.println("hello");
            Object data = request.getParameter("id");
            Object selection =request.getParameter("select");
            System.out.println("Seleceed"+selection);
            System.out.println(data);
            Functions function = new Functions();
            
            ArrayList Days=new ArrayList();
            Days.add(1);
            Days.add(2);
            Days.add(3);
            Days.add(4);
            Days.add(5);
            Days.add(6);
            ArrayList<ArrayList> dat= new ArrayList();
            ArrayList hours = new ArrayList();
            ArrayList ClassHours = new ArrayList();
          
            if(selection.equals("2"))
            {
            //ArrayList Days=   function.getDays(data);
            for(int i =0; i<Days.size();i++){
                try 
                {
                    hours=  function.gethours(data,i);
                } 
                catch (SQLException ex) 
                {
                    Logger.getLogger(freelist.class.getName()).log(Level.SEVERE, null, ex);
                }
                dat.add(hours);
            }
            
            
            }
            else
            {
                for(int i =0; i<Days.size();i++){
                    ClassHours=  function.getClasshours(data,i);
                    dat.add(ClassHours);
                    
                }
        } 
            HttpSession session = request.getSession(false);
            System.out.println(""+session.getAttribute("user"));
            RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
            request.setAttribute("record", dat);
            view.forward(request, response);
            
    }  
        catch (SQLException ex)
        {
            Logger.getLogger(freelist.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
