package web;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Dress;
import database.DressImpl;
import impl.DressInterface;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/GetDress")
@MultipartConfig(maxFileSize = 16177215)
public class GetDress extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public GetDress() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        DressInterface dressInterface = new DressImpl();

        try {
            Dress dress = dressInterface.getDress(id);
            request.setAttribute("d", dress); // Change "dress" to "d"
        } catch (SQLException e) {
            // Handle SQLException
            e.printStackTrace();
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/editdress.jsp");
        dispatcher.forward(request, response);
    }
}