package zxs.ssm.services;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zxs.ssm.po.Users;
import zxs.ssm.po.UsersExample;

public interface UsersService {
	int countByExample(UsersExample example);

    int deleteByExample(UsersExample example);

    int deleteByPrimaryKey(String userId);

    int insert(Users record);

    int insertSelective(Users record);

    List<Users> selectByExample(UsersExample example);

    Users selectByPrimaryKey(String userId);

    int updateByExampleSelective(@Param("record") Users record, @Param("example") UsersExample example);

    int updateByExample(@Param("record") Users record, @Param("example") UsersExample example);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
	public Users selectByIdAndPass(Users record);
	
}
