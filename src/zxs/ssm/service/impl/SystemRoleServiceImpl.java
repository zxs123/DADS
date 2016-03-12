package zxs.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import zxs.ssm.mapper.BidPlanMapper;
import zxs.ssm.mapper.SystemroleMapper;
import zxs.ssm.po.Systemrole;
import zxs.ssm.po.SystemroleExample;
import zxs.ssm.services.SystemRoleService;

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
		// TODO Auto-generated method stub
		return 0;
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

	
	
}
