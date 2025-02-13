/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.customer;

import dao.OrderDetailDAO;
import dao.orderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author ngock
 */
@WebServlet(name = "orderInfo", urlPatterns = {"/orderInfo"})
public class orderInfo extends HttpServlet {

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
            out.println("<title>Servlet orderInfo</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet orderInfo at " + request.getContextPath() + "</h1>");
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        String orderStatus = new orderDAO().getOrderStatus(orderId);
        if ("cancelOrder".equals(action)) {
            orderDAO o = new orderDAO();
            o.cancelOrder(orderId);
            request.setAttribute("message", "Order cancelled successfully!");
            response.sendRedirect(request.getContextPath() + "/orderInfo");
        } else {
            orderDAO o = new orderDAO();
            List<OrderDetail> orderDetails = o.getOrderDetails(orderId);
            OrderDetailDAO odDAO = new OrderDetailDAO();
            Map<Integer, List<OrderDetail>> groupedOrderDetails = new HashMap<>();
            for (OrderDetail od : orderDetails) {
                od.setCheckFeedback(odDAO.checkFeedback(od.getId()));
                groupedOrderDetails.computeIfAbsent(od.getOrderID(), k -> new ArrayList<>()).add(od);
            }
            request.setAttribute("groupedOrderDetails", groupedOrderDetails);
            request.setAttribute("orderDetails", orderDetails);
            request.setAttribute("orderStatus",orderStatus);
            request.getRequestDispatcher("/view/customer/orderInformation.jsp").forward(request, response);
        }
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
        processRequest(request, response);
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

//        int orderID = Integer.parseInt(request.getParameter("orderID"));
