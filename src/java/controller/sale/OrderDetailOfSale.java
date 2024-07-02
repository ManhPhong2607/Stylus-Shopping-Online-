/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.sale;

import dao.OrderDaoForSale;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.OrderDetailsForSale;

/**
 *
 * @author acer
 */
public class OrderDetailOfSale extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet OrderDetailOfSale</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderDetailOfSale at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        OrderDaoForSale o = new OrderDaoForSale();
        List<model.OrderStatus> status = o.getOrderStatus();
        List<model.OrderDetailsForSale> detailsList = o.getOrderDetails(id);
        for(OrderDetailsForSale os : detailsList){
            System.out.println(os);
        }
        OrderDetailsForSale  od = new OrderDetailsForSale();
        od = detailsList.get(0);
        request.setAttribute("status", status);
        request.setAttribute("orderDetails", detailsList);
        request.setAttribute("c", od);
        request.getRequestDispatcher("view/sale/orderDetailOfSale.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        int status = Integer.parseInt(request.getParameter("statusId"));
        OrderDaoForSale o = new OrderDaoForSale();
        o.updateStatus(orderId, status);
        response.sendRedirect("OrderListOfSale");

    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
