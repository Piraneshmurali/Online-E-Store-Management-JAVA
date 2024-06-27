package web;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import database.DressImpl;
import impl.DressInterface;

/**
 * Servlet implementation class DeleteDress
 */
@WebServlet("/DeleteDress")
public class DeleteDress extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteDress() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        //response.setContentType("text/html");
        System.out.println("delete");
        String idParameter = request.getParameter("id");
        
            int id = Integer.parseInt(idParameter);
            DressInterface dressInterface = new DressImpl();
            dressInterface.removeDress(id);
            response.sendRedirect("dresslisit.jsp");
        
    }
}
