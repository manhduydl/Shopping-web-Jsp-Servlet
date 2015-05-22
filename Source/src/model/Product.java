package model;

public class Product {

	private int ma_san_pham;
	private int ma_the_loai;
	private String ten_san_pham;
	private String hinh_anh;
	private Double gia_ban;
	private String hang_san_xuat;
	private String thong_tin;

	public Product() {
	}

	public Product(int ma_san_pham, int ma_the_loai, String ten_san_pham,
			String hinh_anh, Double gia_ban, String hang_san_xuat,
			String thong_tin) {
		this.ma_san_pham = ma_san_pham;
		this.ma_the_loai = ma_the_loai;
		this.ten_san_pham = ten_san_pham;
		this.hinh_anh = hinh_anh;
		this.gia_ban = gia_ban;
		this.hang_san_xuat = hang_san_xuat;
		this.thong_tin = thong_tin;
	}

	public int getMa_san_pham() {
		return ma_san_pham;
	}

	public void setMa_san_pham(int ma_san_pham) {
		this.ma_san_pham = ma_san_pham;
	}

	public String getTen_san_pham() {
		return ten_san_pham;
	}

	public void setTen_san_pham(String ten_san_pham) {
		this.ten_san_pham = ten_san_pham;
	}

	public String getHinh_anh() {
		return hinh_anh;
	}

	public void setHinh_anh(String hinh_anh) {
		this.hinh_anh = hinh_anh;
	}

	public Double getGia_ban() {
		return gia_ban;
	}

	public void setGia_ban(Double gia_ban) {
		this.gia_ban = gia_ban;
	}

	public String getHang_san_xuat() {
		return hang_san_xuat;
	}

	public void setHang_san_xuat(String hang_san_xuat) {
		this.hang_san_xuat = hang_san_xuat;
	}

	public String getThong_tin() {
		return thong_tin;
	}

	public void getThong_tin(String thong_tin) {
		this.thong_tin = thong_tin;
	}


	public int getMa_the_loai() {
		return ma_the_loai;
	}

	public void setMa_the_loai(int ma_the_loai) {
		this.ma_the_loai = ma_the_loai;
	}

}
