/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AccountDAO;
import dao.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.Customer;

/**
 *
 * @author ASUS
 */
public class Login extends HttpServlet {

    AccountDAO accountDAO = new AccountDAO();
    CustomerDAO customerDAO = new CustomerDAO();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        response.sendRedirect(request.getContextPath() + "/index.jsp?error=true");
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
        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(60 * 60);
        Account account = new Account();
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        account.setEmail(email);
        account.setPassword(pass);
        Account findAccount = accountDAO.findAccount(account);

        Customer customer = new Customer();
        customer.setEmail(email);
        customer.setPassword(pass);
        Customer findCustomer = customerDAO.findCustomer(customer);
        
        if (findAccount != null) {
            int role = findAccount.getRole().getRoleID();

            session.removeAttribute("error");
            session.setAttribute("email", email);
            session.setAttribute("account", findAccount);
            session.setAttribute("role", role);
            session.setAttribute("accID", findAccount.getAccountID());
            switch (role) {
                case 1:
                    response.sendRedirect("AdminDashBoard");
                    break;
                case 2:
                    response.sendRedirect("MktDashboard");
                    break;
                case 3:
                    response.sendRedirect("OrderListOfSaleAdmin");
                    break;
                case 4:
                    response.sendRedirect("OrderListOfSale");
                    break;
                case 6:
                    response.sendRedirect("OrderListForStaff");
                    break;    
            }
        } else if (findCustomer != null) {
            Customer cs = customerDAO.findCustomer(findCustomer);
            session.removeAttribute("error");
            session.setAttribute("email", email);
            session.setAttribute("account", cs);
            session.setAttribute("role", findCustomer.getRoleID());
            response.sendRedirect("Home");
        } else {
            session.setAttribute("error", "Username or password incorrect");
            response.sendRedirect("Home?error=true");
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
    }// </editor-fold>

}
