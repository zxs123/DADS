package zxs.ssm.services;

import java.util.List;
import java.util.Map;
import zxs.ssm.po.Department;
import zxs.ssm.po.DepartmentExample;

public interface DepartmentService {

	List<String> selectDepNameList();
	List<Department> selectByExample(DepartmentExample example);
	Map<String, Object> getAllJson() throws Exception ;
}
