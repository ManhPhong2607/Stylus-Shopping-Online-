/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author 84976
 */
public class ProductImage {
    private int id;
    private int productID;
    private String productImages;

    public ProductImage() {
    }

    public ProductImage(int productID, String productImages) {
        this.productID = productID;
        this.productImages = productImages;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductID() {
        return productID;
    }

    public ProductImage(int id, int productID, String productImages) {
        this.id = id;
        this.productID = productID;
        this.productImages = productImages;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductImages() {
        return productImages;
    }

    public void setProductImages(String productImages) {
        this.productImages = productImages;
    }
    
    
}
