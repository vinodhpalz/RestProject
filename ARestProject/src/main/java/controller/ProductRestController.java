package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import model.Product;

@RestController
public class ProductRestController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String welcome()
	{
		int a = 10;
		int b = 20;
		int c = a + b;
		return "welcome to REST Example";
	}
	
	@RequestMapping(value="/products",method=RequestMethod.GET)
	public List<Product> getProducts()
	{
		List<Product> l = new ArrayList<Product>();
		l.add(new Product("Amazon","Bangalore"));
		l.add(new Product("Flipkart","Delhi"));
		l.add(new Product("Google", "US"));
		
		return l;
		
	}
	
}
