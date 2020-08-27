package jp.co.internous.altair.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import jp.co.internous.altair.model.domain.MstCategory;


@Mapper
public interface MstCategoryMapper {
	
	@Select("SELECT * FROM mst_category")
	List<MstCategory> findAll();
	
}
