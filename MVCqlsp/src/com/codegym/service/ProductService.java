package com.codegym.service;

import com.codegym.model.Product;

import java.util.List;

public interface ProductService {

    List<Product> findAll();
    void save (Product product);
    void edit (int id,Product product);
    void delete (int id);
    Product findById(int id);
    Product findByName(String name);

}
