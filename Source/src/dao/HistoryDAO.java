package dao;

import java.util.List;

import model.History;

public interface HistoryDAO {
	
	//thêm mới một lịch sử mua hàng.
	public void addHistory(History h);
	
	//lọc lịch sử của khách hàng.
	public List<History> getList(int user_id);

}
