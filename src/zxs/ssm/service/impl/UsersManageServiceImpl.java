package zxs.ssm.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import zxs.ssm.mapper.UsersManageMapper;
import zxs.ssm.po.Users;
import zxs.ssm.po.UsersManage;
import zxs.ssm.po.UsersManageExample;
import zxs.ssm.po.UsersManageExample.Criteria;
import zxs.ssm.services.UsersManageService;
import zxs.ssm.util.DataGridModel;

public class UsersManageServiceImpl implements UsersManageService{

	@Autowired
	private UsersManageMapper umMapper;
	
	@Override
	public Map<String, Object> getPageList(DataGridModel dgm, Users user) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>(2);
		List<UsersManage> list = null;
		if (user != null && !("".equals(user))) {
			UsersManageExample umExample = new UsersManageExample();
			Criteria criteria = umExample.createCriteria();
			if(user.getUserId()!=null && !("".equals(user.getUserId()))){
				criteria.andUserIdEqualTo(user.getUserId());
			}
			if(user.getUserName()!=null && !("".equals(user.getUserName()))){
				criteria.andUserNameEqualTo(user.getUserName());
			}
			if(user.getUserDep()!=null && !("".equals(user.getUserDep()))){
				criteria.andDepIdEqualTo(user.getUserDep());
			}
			if(user.getUserRname()!=null && !("".equals(user.getUserRname())) && !("kongbai".equals(user.getUserRname()))){

				criteria.andUserRnameEqualTo(user.getUserRname());
			}
			list = umMapper.selectByExample(umExample);
		}else{
			list = umMapper.selectByExample(null);
		}
		int total = list.size();
		List<UsersManage> list1 = new ArrayList<UsersManage>();
		int start = (dgm.getPage() - 1) * dgm.getRows(), end = start + dgm.getRows();
		for (int i = start; i < end && i < total; i++) {
			list1.add(list.get(i));
		}
		result.put("total", total);
		result.put("rows", list1);
		return result;
	}

}
