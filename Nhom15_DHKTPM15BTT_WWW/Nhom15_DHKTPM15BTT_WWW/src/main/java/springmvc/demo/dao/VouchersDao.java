package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.Voucher;

public interface VouchersDao {

	public List<Voucher> getDsVouchers(int index);

	int demSLVoucher();
}
