package Work.hunter.dao;

import java.util.List;

import Work.hunter.bean.ComApply;

public interface IComApplyDao {
	public Object save(ComApply comApply);
//	public boolean update(ComApply comApply);
	public ComApply findByAcc(String comApplyAcc);
	public List<ComApply> findUnconfirm();
	public List<ComApply> getAll();
}
