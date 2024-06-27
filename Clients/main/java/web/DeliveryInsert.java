package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import database.Deliveryimpl;
import impl.Deliveryinterface;
import model.Delivery;

@WebServlet("/DeliveryInsert")
public class DeliveryInsert extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Deliveryinterface deliveryInterface;

    public void init() {
        deliveryInterface = new Deliveryimpl();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Delivery delivery = new Delivery(name, phone, email, address);
        try {
            deliveryInterface.adddelivery(delivery);
            response.sendRedirect("deliverylist.jsp");
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}
