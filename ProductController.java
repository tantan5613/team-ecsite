package jp.co.internous.altair.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.internous.altair.model.domain.MstProduct;
import jp.co.internous.altair.model.mapper.MstProductMapper;
import jp.co.internous.altair.model.session.LoginSession;

@Controller
@RequestMapping("/altair/product")
public class ProductController {
	
	@Autowired
	private MstProductMapper productMapper;
	
	@Autowired
	private LoginSession loginSession;

	@RequestMapping("/{id}")
	public String index(@PathVariable("id") int id, Model m) {
		
		// 商品情報取得
		MstProduct products = productMapper.findById(id);
		m.addAttribute("products", products);
		m.addAttribute("LoginSession", loginSession);
		
		// 商品詳細画面表示
		return "product_detail";
	}
	
}
