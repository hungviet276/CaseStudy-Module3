package service;

import model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDAO {
    public void insertProduct(Product product) throws SQLException;

    public Product selectProductByCode(String code);
    public List<Product>  selectProductDress();
    public List<Product>  selectProductShirt();
    public List<Product>  selectProductTrousers();
    public List<Product>  selectProductByName(String name);

    public List<Product> selectAllProduct();

    public boolean deleteProduct(String code) throws SQLException;

    public boolean updateProduct(Product product) throws SQLException;
}
