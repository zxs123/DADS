package zxs.ssm.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import zxs.ssm.mapper.UsersMapper;
import zxs.ssm.po.Users;
import zxs.ssm.po.UsersExample;
import zxs.ssm.po.UsersExample.Criteria;
import zxs.ssm.services.UsersService;
import zxs.ssm.util.DataGridModel;

public class UsersServiceImpl implements UsersService {

	@Autowired
	private UsersMapper usersMapper;

	// 通過用戶名和密碼查找用戶信息
	@Override
	public Users selectByIdAndPass(Users record) {
		Users user = usersMapper.selectByIdAndPass(record);
		return user;
	}

	@Override
	public int countByExample(UsersExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByExample(UsersExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(String userId) {
		usersMapper.deleteByPrimaryKey(userId);
		return 0;
	}

	@Override
	public int insert(Users record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Users record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Users> selectByExample(UsersExample example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Users selectByPrimaryKey(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByExampleSelective(Users record, UsersExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(Users record, UsersExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(Users record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Users record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Map<String, Object> getPageList(DataGridModel dgm, Users user) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>(2);
		System.out.println("Page:" + dgm.getPage() + ",Rows:" + dgm.getRows());
		List<Users> list = null;
		if (user != null && !("".equals(user))) {
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
			list = usersMapper.selectByExample(usersExample);
		}else{
			list = usersMapper.selectByExample(null);
		}
		int total = list.size();
		List<Users> list1 = new ArrayList<Users>();
		int start = (dgm.getPage() - 1) * dgm.getRows(), end = start + dgm.getRows();
		for (int i = start; i < end && i < total; i++) {
			list1.add(list.get(i));
		}
		result.put("total", total);
		result.put("rows", list1);
		return result;
	}

	@Override
	public void deleteUsers(List<String> usersId) throws Exception {
		if (usersId != null && usersId.size() > 0) {
			for (String userid : usersId) {
				usersMapper.deleteByPrimaryKey(userid);
			}
		}
	}
}
