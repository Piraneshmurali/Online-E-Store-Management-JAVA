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

@WebServlet("/DeliveryDelete")
public class DeliveryDelete extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Deliveryinterface deliveryInterface;

    public void init() {
        deliveryInterface = new Deliveryimpl();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParameter = request.getParameter("id");
        if (idParameter != null && idParameter.matches("\\d+")) {
            int id = Integer.parseInt(idParameter);
            try {
                deliveryInterface.delete(id);
                response.sendRedirect("deliverylist.jsp");
            } catch (SQLException e) {
                throw new ServletException(e);
            }
        } else {
            System.out.print(idParameter);
        }
    }
}
