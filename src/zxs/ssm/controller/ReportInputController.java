package zxs.ssm.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import zxs.ssm.po.BidPlan;
import zxs.ssm.services.ReportInputService;
import zxs.ssm.util.DataGridModel;

@Controller
@RequestMapping("/reportInput")
public class ReportInputController {
	
	@Autowired
	private ReportInputService repInService;
	
	//显示月报录入的首页
	@RequestMapping("monthlyReportInput")
	public String showMonReportIn() throws Exception{
		return "reportInput/monReportList";
	}
	//显示投标的录入界面
	@RequestMapping("bidsInput")
	public String showBidsIn() throws Exception{
		return "reportInput/bids";
	}
	
	//查询月报录入的列表
	@RequestMapping(value="/queryMonReportList",method=RequestMethod.POST)
	@ResponseBody     
	public Map<String, Object> queryMonReportList(DataGridModel dgm,BidPlan bidPlan) throws Exception{
		//spring可以自动装配两个对象  会将返回的Map转换成JSON对象
	    return repInService.getPageList(dgm, bidPlan);
	}
	
	//新增投标计划
	@RequestMapping(value="/insertBidPlan",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> insertBidPlan(BidPlan bidPlan){
		//以json格式返回操作完成信息到前台
		Map<String,Object> result = new HashMap<String,Object>();
		//bidPlan中已经包含了表单填写的全部数据
		try {
			repInService.saveBidPlan(bidPlan);
			result.put("state", "success");
			result.put("message", "操作成功！");
		} catch (Exception e) {
			result.put("state", "fail");
			result.put("message", "操作失败！");
			e.printStackTrace();
		}
		return result;
	}
	
	//修改投标计划
	@RequestMapping(value="/updateBidPlan",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> updateBidPlan(BidPlan bidPlan){
		//以json格式返回操作完成信息到前台
		Map<String,Object> result = new HashMap<String,Object>();
		//bidPlan中已经包含了修改后表单的全部数据
		try {
			repInService.updateBidPlan(bidPlan);
			result.put("state", "success");
			result.put("message", "操作成功！");
		} catch (Exception e) {
			result.put("state", "fail");
			result.put("message", "操作失败！");
			e.printStackTrace();
		}
		return result;
	}
	
	//删除投标计划
	@RequestMapping(value="/deleteBidPlan",method=RequestMethod.POST)
	@ResponseBody
	public void deleteBidPlan(String ids){
		String[] idArr = ids.split(","); 
		for(int i=0;i<=idArr.length-1;i++){
			repInService.deleteBidPlan(idArr[i]);
		}
	}
	
}
