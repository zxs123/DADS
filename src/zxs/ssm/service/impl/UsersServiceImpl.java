package zxs.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import zxs.ssm.mapper.UsersMapper;
import zxs.ssm.po.Users;
import zxs.ssm.po.UsersExample;
import zxs.ssm.services.UsersService;

public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersMapper usersMapper;
	
	//通過用戶名和密碼查找用戶信息
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

}
