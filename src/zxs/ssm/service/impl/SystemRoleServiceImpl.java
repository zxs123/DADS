package zxs.ssm.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import zxs.ssm.mapper.BidPlanMapper;
import zxs.ssm.mapper.SystemroleMapper;
import zxs.ssm.po.Systemrole;
import zxs.ssm.po.SystemroleExample;
import zxs.ssm.po.Users;
import zxs.ssm.po.UsersExample;
import zxs.ssm.po.UsersExample.Criteria;
import zxs.ssm.services.SystemRoleService;
import zxs.ssm.util.DataGridModel;

public class SystemRoleServiceImpl implements SystemRoleService{

	@Autowired
	private SystemroleMapper srMapper;
	
	@Override
	public int countByExample(SystemroleExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByExample(SystemroleExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer srId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Systemrole record) {
		return srMapper.insert(record);
	}

	@Override
	public int insertSelective(Systemrole record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Systemrole> selectByExample(SystemroleExample example) {
		return srMapper.selectByExample(null);
	}

	@Override
	public Systemrole selectByPrimaryKey(Integer srId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByExampleSelective(Systemrole record,
			SystemroleExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(Systemrole record, SystemroleExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(Systemrole record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Systemrole record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Map<String, Object> getPageList(DataGridModel dgm, Users user) {
		Map<String, Object> result = new HashMap<String, Object>(2);
		System.out.println("Page:" + dgm.getPage() + ",Rows:" + dgm.getRows());
		List<Systemrole> list = null;
		/*if (user != null && !("".equals(user))) {
			UsersExample usersExample = new UsersExample();
			Criteria criteria = usersExample.createCriteria();
			if(user.getUserId()!=null && !("".equals(user.getUserId()))){
				criteria.andUserIdEqualTo(user.getUserId());
			}
			if(user.getUserName()!=null && !("".equals(user.getUserName()))){
				criteria.andUserNameEqualTo(user.getUserName());
			}
			if(user.getUserDep()!=null && !("".equals(user.getUserDep()))){
				criteria.andUserDepEqualTo(user.getUserDep());
			}
			list = srMapper.selectByExample(usersExample);
		}else{*/
			list = srMapper.selectByExample(null);
//		/}
		int total = list.size();
		List<Systemrole> list1 = new ArrayList<Systemrole>();
		int start = (dgm.getPage() - 1) * dgm.getRows(), end = start + dgm.getRows();
		for (int i = start; i < end && i < total; i++) {
			list1.add(list.get(i));
		}
		result.put("total", total);
		result.put("rows", list1);
		return result;
	}

	
	
}
