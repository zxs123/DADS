package zxs.ssm.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import zxs.ssm.mapper.BidPlanMapper;
import zxs.ssm.po.BidPlan;
import zxs.ssm.services.DataQueryService;
import zxs.ssm.util.DataGridModel;

public class DataQueryServiceImpl implements DataQueryService{
	
    @Autowired
	private BidPlanMapper bidplanMapper;
	@Override
	public Map<String, Object> getPageList(DataGridModel dgm, BidPlan bidplan) throws Exception {
		Map<String,Object> result = new HashMap<String, Object>();
		List<BidPlan> bidplanList = null;
		bidplanList = bidplanMapper.selectByExample(null);
		int total = bidplanList.size();
		List<BidPlan> bpList = new ArrayList<BidPlan>();
		int start = (dgm.getPage()-1)*dgm.getRows();
		int end = start + dgm.getRows();
		for (int i = start; i < end&&i < total; i++) {
			bpList.add(bidplanList.get(i));
		}
		result.put("total", total);
		result.put("rows", bpList);
		return result;
	}

}
