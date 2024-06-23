package com.asm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asm.bean.Brand;
//import com.asm.bean.Category;
import com.asm.bean.Product;
//import com.asm.bean.ProductCategory;
import com.asm.service.BrandService;
//import com.asm.service.CategoryService;
import com.asm.service.ProductService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	BrandService bService;
//	@Autowired CategoryService cService;
	@Autowired
	ProductService pService;

	@RequestMapping("/list")
	public String home(Model model, @RequestParam("kw") Optional<String> kw, @RequestParam("bid") Optional<String> bid,
			@RequestParam("p") Optional<Integer> p) {
		System.out.println("fill brand list " + bid);
		try {
			if (bid.isPresent()) {
				Page<Product> dataPageProduct = pService.findProductByBrand(bid, p);
				model.addAttribute("products", dataPageProduct.getContent());
				model.addAttribute("infoPage", dataPageProduct);
			} else {
				Page<Product> dataPageProduct = pService.searchProductByName(kw, p);
				model.addAttribute("products", dataPageProduct.getContent());
				model.addAttribute("infoPage", dataPageProduct);
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return "product/list";
	}

	@GetMapping("/list/brand")
	public String filterByListBrand(Model model, @RequestParam("bid") List<String> bid,
			@RequestParam("p") Optional<Integer> p) {
		Page<Product> dataPageProduct = pService.findProductByListBrand(bid, p);
		model.addAttribute("products", dataPageProduct.getContent());
		model.addAttribute("infoPage", dataPageProduct);
		return "product/list";
	}

	@GetMapping("/list/price/{price}")
	public String filterByPrice(Model model, @PathVariable("price") String price,
			@RequestParam("p") Optional<Integer> p) {
		if (price.equalsIgnoreCase("under100")) {
			Page<Product> dataPageProduct = pService.findProductLessThanPrice(100000.0, p);
			model.addAttribute("products", dataPageProduct.getContent());
			model.addAttribute("infoPage", dataPageProduct);
		} else if (price.equalsIgnoreCase("100-300")) {
			Page<Product> dataPageProduct = pService.findProductBetweenPrice(100000.0, 300000.0, p);
			model.addAttribute("products", dataPageProduct.getContent());
			model.addAttribute("infoPage", dataPageProduct);
		} else if (price.equalsIgnoreCase("300-900")) {
			Page<Product> dataPageProduct = pService.findProductBetweenPrice(300000.0, 900000.0, p);
			model.addAttribute("products", dataPageProduct.getContent());
			model.addAttribute("infoPage", dataPageProduct);
		} else if (price.equalsIgnoreCase("over900")) {
			Page<Product> dataPageProduct = pService.findByPriceGreaterThanEqual(900000.0, p);
			model.addAttribute("products", dataPageProduct.getContent());
			model.addAttribute("infoPage", dataPageProduct);
		}
		return "product/list";
	}

	@RequestMapping("/detail/{id}")
	public String detail(Model model, @PathVariable("id") Long id) {
		Product productFound = pService.ProductDetail(id);
		model.addAttribute("product", productFound);
		Brand brandDetail = productFound.getBrand();
		Optional<Integer> p = Optional.of(0);
		Optional<String> bid = Optional.ofNullable(brandDetail.getId());
		Page<Product> pageProduct = pService.findProductByBrand(bid, p);
		model.addAttribute("relatedListProduct", pageProduct.getContent());
		return "product/product-detail";
	}
}
