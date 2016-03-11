package zxs.ssm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.codehaus.jackson.map.ObjectMapper;
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
	@ResponseBody  
	@RequestMapping(value="/getJson",method=RequestMethod.POST)
	public String  getJson() throws Exception{

/*		List<Map> list = new ArrayList();		
		Map<String,Object> result2 = new HashMap<String,Object>();
		result2.put("text", "apple");	
		list.add(result2);
		Map<String,Object> result3 = new HashMap<String,Object>();
		result3.put("text", "orange");	
		result3.put("checked", "false");
		list.add(result3);
		
		Map<String,Object> result1 = new HashMap<String,Object>();
		result1.put("id", 2);
		result1.put("text", "Fruits");	
		result1.put("State", "closed");	
		result1.put("children", list);
		
		
		List<Map> list1 = new ArrayList();
		list1.add(result1);
		list1.add(result1);
		
		Map<String,Object> result = new HashMap<String,Object>();
		result.put("id", 1);
		result.put("text", "food");	
		result.put("children", list1);
		
		List<Map> list2 = new ArrayList();
		list2.add(result);*/
		
		
        
        List<FunctionModule> fmList = fmService.selectByExample(null);
		
		Users user = (Users) session.getAttribute("baseUser");
		//System.out.println(user);
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
		
		List<Map> list2 = new ArrayList();
		int mn=1;
		for(int i=0;i<fmList.size();i++){
			FunctionModule fm = fmList.get(i);
			
			if(fm.getFmCategory()==-1){
				List<Map> list1 = new ArrayList();
				for(int j=0;j<fmList.size();j++){
					FunctionModule fm1 = fmList.get(j);
					Map<String,Object> result1 = new HashMap<String,Object>();
					if(fm1.getFmCategory()==fm.getFmId()){
						
						List<Map> list = new ArrayList();
						for(int k=0;k<fmList.size();k++){
							FunctionModule fm2 = fmList.get(k);							
							
							if(fm2.getFmCategory()==fm1.getFmId()){								
								Map<String,Object> result2 = new HashMap<String,Object>();
								result2.put("text", fm2.getFmName());
								for(int m=0;m<fmList2.size();m++){
									FunctionModule fm3 = fmList2.get(m);
									if(m!=11){
										if(fm3.getFmId() == fm2.getFmId() || fm3.getFmId().equals(fm2.getFmId())){
											result2.put("checked", "ture");
										}
									}
								}
								list.add(result2);
							}
						}						
						result1.put("id", ++mn);
						result1.put("text", fm1.getFmName());	
						result1.put("State", "closed");	
						result1.put("children", list);
						list1.add(result1);
						result1=null;
					}					
				}
				Map<String,Object> result = new HashMap<String,Object>();
				result.put("id", 1);
				result.put("text", fm.getFmName());	
				result.put("children", list1);
				list2.add(result);
			}
		}
		
		ObjectMapper objectMapper = new ObjectMapper();
        String jsonString=objectMapper.writeValueAsString(list2);
        System.out.println(jsonString);
        
        return jsonString;
	}

}
