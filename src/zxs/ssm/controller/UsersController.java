package zxs.ssm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import zxs.ssm.po.FunctionLimit;
import zxs.ssm.po.FunctionLimitExample;
import zxs.ssm.po.FunctionLimitExample.Criteria;
import zxs.ssm.po.FunctionModule;
import zxs.ssm.po.Users;
import zxs.ssm.services.FunctionLimitService;
import zxs.ssm.services.FunctionModuleService;
import zxs.ssm.services.UsersService;

@Controller
@RequestMapping("/user")
public class UsersController {

	@Autowired
	private UsersService usersService;
	@Autowired
	private FunctionModuleService fmService;
	@Autowired
	private FunctionLimitService flService;
	@Autowired
	HttpSession session;
	
	//出现错误，返回错误页面
	@RequestMapping("error")
	public String error() {
		return "user/error";
	}
	
	//测试用例2015-12-31
	@RequestMapping("/queryUsers")
	public ModelAndView queryItems(HttpServletRequest request) throws Exception{
		Users record = new Users();
		record.setUserId("1914");
		record.setUserPassword("12851285");
		Users user = usersService.selectByIdAndPass(record);
		System.out.println(user);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("itemsList", user);
		modelAndView.setViewName("jsp/success");
		return modelAndView;
	}
	
	//登录	
	@RequestMapping(value = "/main")
	public String main(
			Model model,Locale locale ) {
		//判断用户是否登录，如果未登录，跳到登录界面user/login，否则登录
        if(null==session.getAttribute("baseUser")){
        	return "user/login";
        }
		try {
			Users user = (Users) session.getAttribute("baseUser");
			System.out.println(user);
			int position = user.getUserPosition();  //获取用户角色
			FunctionLimitExample flExample = new FunctionLimitExample();
			Criteria criteria = flExample.createCriteria();
			criteria.andFlRoleidEqualTo(position);			
			List<FunctionLimit> flList = flService.selectByExample(flExample);   //通过角色查询权限
			List<FunctionModule> fmList = new ArrayList<FunctionModule>();
			for(Iterator<FunctionLimit> iterator = flList.iterator();iterator.hasNext();){  
				FunctionLimit fl = iterator.next();
				FunctionModule fm = fmService.selectByPrimaryKey(fl.getFlFmid());
				fmList.add(fm);
	        }
			model.addAttribute("privileges", fmList);			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "index/index";
	}
	
	//用户登录验证，验证用户名和密码是否正确
	@ResponseBody
	@RequestMapping(value = "/checklogin")
	public Map<String, String> login(
			@RequestParam(value = "username", required = true) String loginName,
			@RequestParam(value = "userpass", required = true) String password,
			HttpServletRequest request){
		Map<String, String> ajaxResult = new HashMap<String, String>();
		try {
			System.out.println(loginName+":"+password);
			Users record = new Users();
			record.setUserId(loginName);
			record.setUserPassword(password);
			Users user = usersService.selectByIdAndPass(record);
			if (user != null) {
				session.setAttribute("baseUser", user);
				ajaxResult.put("success", user.getUserName());
			} else {
				ajaxResult.put("err", "用户名或密码错！");
			}
		} catch (Exception e) {
			e.printStackTrace();
			ajaxResult.put("err", "用户名或密码错！");
		}
		return ajaxResult;
	}
	
	@RequestMapping(value = "/test")
	public String test(){
		return "systemManage/userManage";
	}
		
	// 退出系统
	@RequestMapping(value = "/logout")
	public String logout(Locale locale, Model model, HttpServletRequest request) {
		//清除登录session
		if(null != this.session.getAttribute("baseUser")){
			Users user = (Users) this.session.getAttribute("baseUser");
			System.out.println("用户：" + user.getUserName()+"，退出系统。");
			session.removeAttribute("baseUser");
		}
		return "user/login";
	}
	
}
