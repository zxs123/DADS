package zxs.ssm.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import zxs.ssm.po.BidPlan;
import zxs.ssm.services.DataQueryService;
import zxs.ssm.util.DataGridModel;

@Controller
@RequestMapping("/dataQuery")
public class DataQueryController {
	
	@Autowired
	private DataQueryService dataQueryService;
	
	//显示查询月报主页
	@RequestMapping("queryMonthReport")
	public String queryMonthReport() throws Exception{
		return "dataQuery/monthReport";
	}
	//显示查询季报主页
	@RequestMapping("queryQuarterReport")
	public String queryQuarterReport() throws Exception{
		return "dataQuery/quarterReport";
	}
	//月报主页显示的列表
	@ResponseBody
	@RequestMapping(value="/queryMonthReportList",method=RequestMethod.POST)
	public Map<String,Object> queryMonthReportList(DataGridModel dgm,BidPlan bidplan) throws Exception{
		
		return dataQueryService.getPageList(dgm, bidplan);
	}
}
