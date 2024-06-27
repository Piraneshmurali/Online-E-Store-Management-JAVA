package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.Dress;
import impl.DressInterface;
import java.io.IOException;
import java.io.InputStream;

import database.DressImpl;

/**
 * Servlet implementation class AddDress
 */
@WebServlet("/AddDress")
@MultipartConfig(maxFileSize=16177215)
public class AddDress extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDress() {
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
        response.setContentType("image/jpeg");
        
        Dress dress = new Dress();
        dress.setDesc(request.getParameter("des"));
        dress.setName(request.getParameter("name"));
        dress.setPrice(Float.parseFloat(request.getParameter("price")));
        
        // Handle the file upload
        Part filePart = request.getPart("pic");
        if (filePart != null) {
            InputStream inputStream = filePart.getInputStream();
            byte[] photoBytes = inputStream.readAllBytes();
            dress.setPhoto(photoBytes);
        }
        
        DressInterface dressInterface = new DressImpl();
        dressInterface.addDress(dress);
        request.setAttribute("dress", dress);
        
        response.sendRedirect("/Eshop/dresslisit.jsp");
    }

}
