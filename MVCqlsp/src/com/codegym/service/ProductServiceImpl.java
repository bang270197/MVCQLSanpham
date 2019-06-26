package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements  ProductService {
   private static Map<Integer,Product> productMap;
    static {
        productMap=new HashMap<>();
        productMap.put(1,new Product(1,"Banh",200,"Chocopie","Haiha"));
        productMap.put(2,new Product(2,"Keo",300,"Traicay","Madeinvn"));
        productMap.put(3,new Product(3,"Thuocla",400,"Vinataba","Nhamaythuocla"));
        productMap.put(4,new Product(4,"Nuocngot",500,"Cocacola"," Nhamaynuocngot"));
        productMap.put(5,new Product(5,"Botgiat",600,"Omo","Nhaymay"));
        productMap.put(6,new Product(6,"Khan",700,"Khanuot","Nhamaykhan"));
    }
   @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
          productMap.put(product.getId(),product);
    }

    @Override
    public void edit(int id, Product product) {
          productMap.put(id,product);
    }

    @Override
    public void delete(int id) {
       productMap.remove(id);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }

    @Override
    public Product findByName(String name)
    {

        ArrayList<Product> list=new ArrayList<>(productMap.values());
        for (Product listProduct : list){
            if (listProduct.getName().equals(name)){
                return listProduct;
            }
        }
        return null;
    }
}
