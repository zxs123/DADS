package zxs.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import zxs.ssm.mapper.FunctionLimitMapper;
import zxs.ssm.po.FunctionLimit;
import zxs.ssm.po.FunctionLimitExample;
import zxs.ssm.services.FunctionLimitService;

public class FunctionLimitServiceImpl implements FunctionLimitService{

	@Autowired
	private FunctionLimitMapper flMapper;
	
	@Override
	public int countByExample(FunctionLimitExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByExample(FunctionLimitExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer flId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(FunctionLimit record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(FunctionLimit record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<FunctionLimit> selectByExample(FunctionLimitExample example) {
		List<FunctionLimit> list = flMapper.selectByExample(example);
		return list;
	}

	@Override
	public FunctionLimit selectByPrimaryKey(Integer flId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByExampleSelective(FunctionLimit record, FunctionLimitExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(FunctionLimit record, FunctionLimitExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(FunctionLimit record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(FunctionLimit record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
