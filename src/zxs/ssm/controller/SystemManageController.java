package zxs.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.et.mvc.JsonView;
import com.et.mvc.View;
import zxs.ssm.po.Users;
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
	
	@RequestMapping("getUsers")
	public View getUsers() throws Exception{
		Map<String,Object> result = new HashMap<String,Object>();
		List<Users> users = usersService.selectByExample(null);
		result.put("total", users.size());
		result.put("rows", users);		
		return new JsonView(result);
	}
	
	@RequestMapping("userManage")
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
}
