package controller;

import model.Product;
import service.ProductDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "Servlet",urlPatterns = "/products")
public class ProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;

    public void init() {
        productDAO = new ProductDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                insertProduct(request,response);
                break;
            case "edit":
                break;
        }
    }

    private void insertProduct(HttpServletRequest request, HttpServletResponse response) {
        String code = request.getParameter("product_code");
        String name = request.getParameter("product_name");
        String category = request.getParameter("product_categorie");
        int quantity = Integer.parseInt(request.getParameter("product_quantity"));
        double price = Double.parseDouble(request.getParameter("product_price"));
        String pathImage = request.getParameter("product_img");
        Product newProduct = new Product(code,name,category,quantity,price,pathImage);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/addProduct.jsp");
        request.setAttribute("message", "New product was created");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            productDAO.insertProduct(newProduct);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "create":
                showNewForm(request, response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            case "view":
                break;
            case "display":
                listProduct(request,response);
                break;
            default:
                home(request,response);
                break;
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/addProduct.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) {
        List<Product> products = productDAO.selectAllProduct();
        request.setAttribute("listProduct",products);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/managerProduct.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void home(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/home.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
