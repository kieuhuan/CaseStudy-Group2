package com.codegym.dao;

import com.codegym.model.Product;
import com.codegym.model.User;

import java.util.List;

public interface IShopDao{
    List<Product> displayAll();
    Product findByName(int id);
    List<Product> addProductIntoCart();
    List<Product>findbycategory(int category_id);
    User findUserbyEmail(String email);
    List<Product> sortProduct(int sortID);
    List<Product> findProductByName(String keyword);
    void Payment();
    boolean register(User user);
}
