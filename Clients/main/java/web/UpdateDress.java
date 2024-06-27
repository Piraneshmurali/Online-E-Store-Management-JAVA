package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Dress;
import database.DressImpl;
import impl.DressInterface;

import java.io.IOException;
import java.util.Base64;

/**
 * Servlet implementation class UpdateDress
 */
@WebServlet("/UpdateDress")
public class UpdateDress extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDress() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    	response.setContentType("text/html");
    	 Dress updatedDress = new Dress();
    	 int id=Integer.parseInt(request.getParameter("id"));
    	 updatedDress.setDressId(id);
    	 updatedDress.setDesc(request.getParameter("des"));
    	 updatedDress.setName(request.getParameter("name"));
    	 updatedDress.setPrice(Float.parseFloat(request.getParameter("price")));
    	 

         // Update the dress in the database
         DressInterface dressInterface = new DressImpl();
         dressInterface.updateDress(id, updatedDress);

         // Redirect to a page to show the updated dress list or another appropriate page
         response.sendRedirect("/Eshop/dresslisit.jsp");
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        // Retrieve the dress information from the request
        int id = 0;
        String idParam = request.getParameter("id");
        if (idParam != null && !idParam.isEmpty()) {
            id = Integer.parseInt(idParam);
        } else {
            // Handle the case where id is null or empty
            // You might want to throw an exception or return an error message
            System.err.println("Error: ID parameter is null or empty.");
            
        }

        String name = request.getParameter("name");

        float price = 0;
        String priceParam = request.getParameter("price");
        if (priceParam != null && !priceParam.isEmpty()) {
            price = Float.parseFloat(priceParam);
        } else {
            // Handle the case where price is null or empty
            // You might want to throw an exception or return an error message
            System.err.println("Error: Price parameter is null or empty.");
            
        }

        String description = request.getParameter("des");

        byte[] photo = null;
        String photoBase64 = request.getParameter("photoBase64");
        if (photoBase64 != null && !photoBase64.isEmpty()) {
            photo = Base64.getDecoder().decode(photoBase64);
        } else {
            // Handle the case where photoBase64 is null or empty
            // You might want to throw an exception or return an error message
            System.err.println("Error: photoBase64 parameter is null or empty.");
           
        }

        // Create a Dress object for the updated dress
        Dress updatedDress = new Dress(id, name, price, photo, 0, description);

        // Update the dress in the database
        DressInterface dressInterface = new DressImpl();
        dressInterface.updateDress(id, updatedDress);

        // Redirect to a page to show the updated dress list or another appropriate page
        response.sendRedirect("/Eshop/dresslisit.jsp");
    }

}
