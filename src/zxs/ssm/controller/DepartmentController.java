package zxs.ssm.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zxs.ssm.po.Department;
import zxs.ssm.services.DepartmentService;
@Controller
@RequestMapping("/dept")
public class DepartmentController {

	@Autowired
	private DepartmentService deptService;
	
	@RequestMapping(value="/queryAll")
	@ResponseBody         
	public Map<String, Object> queryAll() throws Exception{
	    return deptService.getAllJson(); //可以返回map
	}
	
	@RequestMapping(value="/allList")
	@ResponseBody         
	public List<Department> allList() throws Exception{
	    return deptService.selectByExample(null); //也可以返回list
	}

}
