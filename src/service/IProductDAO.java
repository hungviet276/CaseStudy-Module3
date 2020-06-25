package service;

import model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDAO {
    public void insertProduct(Product product) throws SQLException;

    public Product selectProductByCode(String code);
    public Product selectProductByName(String name);

    public List<Product> selectAllProduct();

    public boolean deleteProduct(String code) throws SQLException;

    public boolean updateProduct(Product product) throws SQLException;
}
