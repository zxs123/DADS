package zxs.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.et.mvc.JsonView;
import com.et.mvc.View;
import zxs.ssm.po.Users;
import zxs.ssm.services.UsersService;

@Controller
@RequestMapping("/systemManage")
public class SystemManageController {

	@Autowired
	private UsersService usersService;
	
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
	
}
