package com.dmr.pizzaweb.servlet;

import com.dmr.pizzaweb.ejb.UserDAO;
import com.dmr.pizzaweb.entity.User;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dmr
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/Login"})
public class LoginServlet extends HttpServlet {
    
    @EJB
    UserDAO dao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        
        String str = dao.sayHello("toto");
        
        resp.getWriter().print(str);
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
        
        response.setContentType("text/html;charset=UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();
        RequestDispatcher dispatcher;
            
        try {

//            Méthode d'accés à la base de données, plus très utilisée
//            InitialContext ctx = new InitialContext();
//            DataSource dataSource = (DataSource)ctx.lookup("java;app/jdbc/pizzaConn");
//            Connection c = dataSource.getConnection(); 
            User user = new User(username, password);
            
            
            session.setAttribute("user", user);
            
            // Redirection http 302
            // response.sendRedirect("app.jsp");
            
            dispatcher = request.getRequestDispatcher("app.jsp");
            dispatcher.forward(request, response);
            
        } catch (Exception ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request, response);
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
