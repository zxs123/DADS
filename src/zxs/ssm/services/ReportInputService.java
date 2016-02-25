package zxs.ssm.services;

import java.util.Map;

import zxs.ssm.po.BidPlan;
import zxs.ssm.util.DataGridModel;

public interface ReportInputService {
	public Map<String, Object> getPageList(DataGridModel dgm,BidPlan bidPlan) throws Exception;
	public void saveBidPlan(BidPlan bidPlan);
	public void updateBidPlan(BidPlan bidPlan);
	public void deleteBidPlan(String id);
}
