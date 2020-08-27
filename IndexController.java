package jp.co.internous.altair.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.internous.altair.model.domain.MstCategory;
import jp.co.internous.altair.model.domain.MstProduct;
import jp.co.internous.altair.model.form.SearchForm;
import jp.co.internous.altair.model.mapper.MstCategoryMapper;
import jp.co.internous.altair.model.mapper.MstProductMapper;
import jp.co.internous.altair.model.session.LoginSession;

@Controller
@RequestMapping("/altair")
public class IndexController {
	
	@Autowired
	private MstCategoryMapper categoryMapper;
	
	@Autowired
	private MstProductMapper productMapper;
	
	@Autowired
	private LoginSession loginSession;


	// Index画面表示
	@RequestMapping("/")
	public String index(Model m) {
		
		// 仮ユーザー登録
		if (!loginSession.getLogined() && loginSession.getTmpUserId() == 0) {
			int tmpUserId = (int)(Math.random() * 1000000000 * -1);
			// 仮ユーザーIDが9桁になるまで10倍する
			while (tmpUserId > -100000000) {
				tmpUserId *= 10;
			}
			loginSession.setTmpUserId(tmpUserId);
		}
		
		// 全商品表示
		List<MstCategory>categoryList = categoryMapper.findAll();
		m.addAttribute("categoryList", categoryList);
		List<MstProduct>products = productMapper.findAll();
		m.addAttribute("products", products);
		

		m.addAttribute("loginSession",loginSession);
		
		return "index";
	}
	
	// 商品検索
	@RequestMapping(value="/searchitem")
	public String searchItem(@ModelAttribute("searchForm") SearchForm form,
			Model m) {
		
		List<MstProduct>products;
		// 商品名に入力されたキーワードの全角スペースを半角、2個以上連続する場合は1つに、初めと終わりのスペースは取り除く
		String keywords = form.getItemName().replaceAll("　", " ").replaceAll(" +"," ").trim();
	
		// カテゴリー未選択でItemNameで検索
		if(form.getCategory()==0) {
			products = productMapper.findByItemName(keywords.split(" "));
		}else {
			// カテゴリー選択ありとItemName両方で検索
			products = productMapper
					.findByCategoryAndItemName(form.getCategory(),keywords.split(" ") );
		}
		
		// カテゴリーを取得 Indexのカテゴリーセレクタに使用
		List<MstCategory>categoryList = categoryMapper.findAll();
		m.addAttribute("categoryList", categoryList);
		m.addAttribute("keywords", keywords);
		m.addAttribute("selected", form.getCategory()); 
		m.addAttribute("products", products);
		m.addAttribute("loginSession",loginSession);
		
		// 商品検索結果画面表示
		return "index";
	}
	
	
}
