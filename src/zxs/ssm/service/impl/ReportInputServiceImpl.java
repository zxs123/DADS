package zxs.ssm.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import zxs.ssm.mapper.BidPlanMapper;
import zxs.ssm.po.BidPlan;
import zxs.ssm.services.ReportInputService;
import zxs.ssm.util.DataGridModel;

public class ReportInputServiceImpl implements ReportInputService{
	@Autowired
	private BidPlanMapper bpMapper;
	
	@Override
	public Map<String, Object> getPageList(DataGridModel dgm, BidPlan bidPlan)
			throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		List<BidPlan> bplist = null;
		bplist = bpMapper.selectByExample(null);
		int total = bplist.size();
		List<BidPlan> cur_bpList = new ArrayList<BidPlan>();
		int start = (dgm.getPage() - 1) * dgm.getRows(), end = start + dgm.getRows();
		for (int i = start; i < end && i < total; i++) {
			cur_bpList.add(bplist.get(i));
		}
		result.put("total", total);
		result.put("rows", cur_bpList);
		return result;
	}

	@Override
	public void saveBidPlan(BidPlan bidPlan) {
		bpMapper.insertSelective(bidPlan);
	}

	@Override
	public void updateBidPlan(BidPlan bidPlan) {
		bpMapper.updateByPrimaryKey(bidPlan);
	}

	@Override
	public void deleteBidPlan(String id) {
		bpMapper.deleteByPrimaryKey(id);	
	}
	
}
