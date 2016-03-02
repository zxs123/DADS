package zxs.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import zxs.ssm.po.BidPlan;
import zxs.ssm.services.MonRepInputService;

@Controller
@RequestMapping("/monRepInput")
public class MonRepInputController {
	
	@Autowired
	private MonRepInputService monRepInputService;
	
	//显示月报录入的页面
	@RequestMapping("monRepInput")
	public String showMonReportIn() throws Exception{
		return "monRepInput/monReport";
	}
	
	//显示月报录入->投标计划表录入页面
	@RequestMapping("mon_bidPlan")
	public String showBidPlan() throws Exception{
		return "monRepInput/bidPlan";
	}
	
	//新增投标计划
	@RequestMapping(value="/addBidPlan",method=RequestMethod.POST)
	@ResponseBody   
	public Map<String,Object> addBidPlan(HttpServletRequest request){
		Map<String,Object> result = new HashMap<String,Object>();
		//接收前台json数据
		String bidPlanJson = request.getParameter("rowsData");
		JSONArray jArray=JSONArray.fromObject(bidPlanJson); 
		@SuppressWarnings("unchecked")
		List<BidPlan> bidPlanList = (List<BidPlan>)JSONArray.toCollection(jArray, BidPlan.class);
		for(int i=0;i<bidPlanList.size();i++){
			try {
				monRepInputService.addBidPlan(bidPlanList.get(i));
				result.put("msg", "保存成功！");
			} catch (Exception e) {
				result.put("msg", "保存失败！");
				e.printStackTrace();
			}
		}
		return result;
	}
}
