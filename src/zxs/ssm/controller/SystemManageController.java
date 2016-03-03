package zxs.ssm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.et.mvc.JsonView;
import com.et.mvc.View;
import zxs.ssm.po.FunctionLimit;
import zxs.ssm.po.FunctionLimitExample;
import zxs.ssm.po.FunctionModule;
import zxs.ssm.po.Users;
import zxs.ssm.po.FunctionLimitExample.Criteria;
import zxs.ssm.services.FunctionLimitService;
import zxs.ssm.services.FunctionModuleService;
import zxs.ssm.services.UsersManageService;
import zxs.ssm.services.UsersService;
import zxs.ssm.util.DataGridModel;

@Controller
@RequestMapping("/systemManage")
public class SystemManageController {

	@Autowired
	private UsersService usersService;
	@Autowired
	private UsersManageService umService;
	@Autowired
	private FunctionLimitService flService;
	@Autowired
	private FunctionModuleService fmService;
	@Autowired
	HttpSession session;
	
	@RequestMapping("/getUsers")
	public View getUsers() throws Exception{
		Map<String,Object> result = new HashMap<String,Object>();
		List<Users> users = usersService.selectByExample(null);
		result.put("total", users.size());
		result.put("rows", users);		
		return new JsonView(result);
	}
	
	@RequestMapping("/userManage")
	public String test() throws Exception{
		return "systemManage/list";
	}
		
	//查询用户列表
	@RequestMapping(value="/queryList",method=RequestMethod.POST)
	@ResponseBody         
	public Map<String, Object> queryList(DataGridModel dgm,Users user) throws Exception{
		//spring太给力了，可以自动装配两个对象  会自动的装返回的Map转换成JSON对象
	    //return userService.getPageListByExemple(dgm, user); 
	    return umService.getPageList(dgm, user);
	}
	
	//新增用户
	@RequestMapping(value="/popWindow",method=RequestMethod.GET)
	public String popWindow() throws Exception{
		return "systemManage/popWindow";
	}	
	
	//权限管理
	@RequestMapping("/privilegeManage")
	public String prilivigeManage() throws Exception{
		return "systemManage/privilegeManage";
	}
	
	//获取权限
	@RequestMapping("/getOrgTree")
	public String main(
			Model model,Locale locale ) {
		try {	
			/*List<FunctionLimit> flList = flService.selectByExample(null);   //通过角色查询权限
			List<FunctionModule> fmList = new ArrayList<FunctionModule>();
			for(Iterator<FunctionLimit> iterator = flList.iterator();iterator.hasNext();){  
				FunctionLimit fl = iterator.next();
				FunctionModule fm = fmService.selectByPrimaryKey(fl.getFlFmid());
				fmList.add(fm);
	        }*/
			List<FunctionModule> fmList = fmService.selectByExample(null);
			model.addAttribute("privileges", fmList);
			
			Users user = (Users) session.getAttribute("baseUser");
			System.out.println(user);
			int position = user.getUserPosition();  //获取用户角色
			FunctionLimitExample flExample = new FunctionLimitExample();
			Criteria criteria = flExample.createCriteria();
			criteria.andFlRoleidEqualTo(position);			
			List<FunctionLimit> flList2 = flService.selectByExample(flExample);   //通过角色查询权限
			List<FunctionModule> fmList2 = new ArrayList<FunctionModule>();
			for(Iterator<FunctionLimit> iterator = flList2.iterator();iterator.hasNext();){  
				FunctionLimit fl = iterator.next();
				FunctionModule fm = fmService.selectByPrimaryKey(fl.getFlFmid());
				fmList2.add(fm);
	        }
			model.addAttribute("privileges2", fmList2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "systemManage/test";
	}
	
	//2016-3-2返回json数据
	@RequestMapping("/getJson")
	public String getJson() throws Exception{
		String str = "";
		return str;
	}
	
}
