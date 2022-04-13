package springmvc.demo.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MappingProducts implements RowMapper<ProductDto> {

	@Override
	public ProductDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductDto products=new ProductDto();
		products.setProduct_id(rs.getString("product_id"));
		products.setName(rs.getString("name"));
		products.setPrice(rs.getFloat("price"));
		products.setSale(rs.getInt("sale"));
		products.setTitle(rs.getString("title"));
		products.setDetails(rs.getString("details"));
		products.setHighlight(rs.getInt("highlight"));
		products.setNew_product(rs.getInt("new_product"));
		products.setSize(rs.getString("size"));
		products.setCreated_at(rs.getDate("created_at"));
		products.setUpdate_at(rs.getDate("updated_at"));
		products.setAmount(rs.getInt("amount"));
		products.setVoucher_id(rs.getString("voucher_id"));
		products.setCode(rs.getString("color_id"));
		products.setName_color(rs.getString("name_color"));
		products.setCode(rs.getString("code"));
		products.setImg(rs.getString("img"));
		return products;
	}

}
