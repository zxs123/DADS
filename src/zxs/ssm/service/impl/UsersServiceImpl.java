package zxs.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import zxs.ssm.mapper.UsersMapper;
import zxs.ssm.po.Users;
import zxs.ssm.services.UsersService;

public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersMapper usersMapper;
	
	@Override
	public Users selectByIdAndPass(Users record) {
		Users user = usersMapper.selectByIdAndPass(record);
		return user;
	}

}
