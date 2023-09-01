package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.ProductDAO;
import com.poly.dao.ProductsDetailDAO;
import com.poly.entity.Orders;
import com.poly.entity.Products;
import com.poly.entity.ProductsDetails;

@Controller
public class PageController {
    @Autowired
    private ProductDAO proDAO;
    

	@RequestMapping("/")
	public String homePage() {
		return "trangChu";
	}

	@RequestMapping("/trangChu")
	public String trangChu() {
		return "trangChu";
	}

	@RequestMapping("/sanpham")
	public String sanPham() {
		return "sanpham";
	}

	@RequestMapping("/lienHe")
	public String lienHe() {
		return "lienHe";
	}

	@RequestMapping("/gioiThieu")
	public String gioiThieu() {
		return "gioiThieu";
	}
	
	@RequestMapping("/chiTiet")
	public String chiTiet() {
		return "chiTiet";
	}
	

    @GetMapping("/sanpham")
    public String showProducts(Model model) {
        List<Products> products = proDAO.findAll();
        model.addAttribute("products", products);
        return "sanpham";
    }
    
  

	@GetMapping("/products")
	public String getProductList(Model model, @RequestParam(required = false, defaultValue = "asc") String sort) {
		List<Products> productList;
		if (sort.equals("asc")) {
			productList = proDAO.findAllByOrderByPriceAsc();
		} else {
			productList = proDAO.findAllByOrderByPriceDesc();
		}
		model.addAttribute("products", productList);
		return "sanpham";
	}
	
	@GetMapping("/detail")
	public String productDetailPage(@RequestParam("id") String product_id, Model model) {
	  // Lấy thông tin sản phẩm từ CSDL dựa trên productId
	  Products product = proDAO.findProductById(product_id);
	  model.addAttribute("product", product);
	  model.addAttribute("PDD", product.getProductsDetails());

	  
	  return "chiTiet";
	}

	
	@GetMapping("/GioHang")
	public String gioHang() {
		return "GioHang";
	}
	
	
}
