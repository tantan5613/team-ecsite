package jp.co.internous.altair.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import jp.co.internous.altair.model.domain.MstProduct;


@Mapper
public interface MstProductMapper {
	
	// 商品全表示　IndexControllerで使用
	@Select("SELECT * FROM mst_product")
	List<MstProduct> findAll();
	
	// カテゴリーと商品名で検索　ProductControllerで使用
	List<MstProduct> findByCategoryAndItemName(@Param("category")int category, @Param("keywords")String[] itemName);
	
	// 商品名で検索　ProductControllerで使用
	List<MstProduct> findByItemName(@Param("keywords")String[] itemName);
	
	// 商品IDで商品を取得　ProductControllerで使用
	@Select("SELECT * FROM mst_product WHERE id = #{id}")
	MstProduct findById(@Param("id") int id);
	
}
