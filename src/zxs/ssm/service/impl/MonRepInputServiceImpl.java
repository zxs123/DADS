package zxs.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import zxs.ssm.mapper.BidPlanMapper;
import zxs.ssm.po.BidPlan;
import zxs.ssm.services.MonRepInputService;

public class MonRepInputServiceImpl implements MonRepInputService {
	
	@Autowired
	private BidPlanMapper bpMapper;
	
	@Override
	public void addBidPlan(BidPlan bidPlan) {
		bpMapper.insertSelective(bidPlan);
	}

}
