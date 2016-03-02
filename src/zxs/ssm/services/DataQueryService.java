package zxs.ssm.services;

import java.util.Map;

import zxs.ssm.po.BidPlan;
import zxs.ssm.util.DataGridModel;

public interface DataQueryService {
	Map<String, Object> getPageList(DataGridModel dgm,BidPlan bidplan) throws Exception;
}
