package zxs.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import zxs.ssm.mapper.DepartmentMapper;
import zxs.ssm.services.DepartmentService;

public class DepartmentServiceImpl implements DepartmentService{

	@Autowired
	private DepartmentMapper dmMapper;

	@Override
	public List<String> selectDepNameList() {
		List<String> dmList = dmMapper.selectDepNameList();
		return dmList;
	}
	
}
