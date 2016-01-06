package zxs.ssm.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import zxs.ssm.mapper.DepartmentMapper;
import zxs.ssm.po.Department;
import zxs.ssm.po.DepartmentExample;
import zxs.ssm.services.DepartmentService;

public class DepartmentServiceImpl implements DepartmentService{

	@Autowired
	private DepartmentMapper dmMapper;

	@Override
	public List<String> selectDepNameList() {
		List<String> dmList = dmMapper.selectDepNameList();
		return dmList;
	}

	@Override
	public Map<String, Object> getAllJson() throws Exception {
		Map<String, Object> result = new HashMap<String, Object>(2);
		List<Department> list = dmMapper.selectByExample(null);
		result.put("total", list==null ? 0 : list.size());
		result.put("rows", list);
		return result;
	}

	@Override
	public List<Department> selectByExample(DepartmentExample example) {
		List<Department> dmList = dmMapper.selectByExample(example);
		return dmList;
	}
	
	
}
