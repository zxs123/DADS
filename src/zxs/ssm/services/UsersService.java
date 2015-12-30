package zxs.ssm.services;

import zxs.ssm.po.Users;

public interface UsersService {

	public Users selectByIdAndPass(Users record);
	
}
