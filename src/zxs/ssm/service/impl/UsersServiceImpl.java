package zxs.ssm.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import zxs.ssm.mapper.UsersMapper;
import zxs.ssm.po.Users;
import zxs.ssm.po.UsersExample;
import zxs.ssm.services.UsersService;
import zxs.ssm.util.DataGridModel;

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

	@Override
	public Map<String, Object> getPageList(DataGridModel dgm, Users user) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>(2); 
		System.out.println("Page:"+dgm.getPage()+",Rows:"+dgm.getRows());
		//String countQuery = "select count(*) from TUser user,TDept dept where user.deptId=dept.id "; 
		
		/*2016-1-5
		DepartmentExample deptExample = new DepartmentExample();
		Criteria criteria = deptExample.createCriteria();
		criteria.andDepIdEqualTo(user.getUserDep());
		int count = deptMapper.countByExample(deptExample);*/
		List<Users> list = usersMapper.selectByExample(null);
		int total = list.size();
		List<Users> list1 = new ArrayList<Users>();
		int start = (dgm.getPage()-1)*dgm.getRows(), end = start+dgm.getRows();
		for(int i=start ; i<end && i<total; i++ ){
			list1.add(list.get(i));
		}
		
/*		String fullQuery = "select new map(user as user,user.id as uid,dept.name as deptName) from TUser user,TDept dept where user.deptId=dept.id "; 
		//这里需要用new map()，jquery easyui datagrid有一个小bug，必须把idField单独列出来，要不然不能多选
		String orderString = "";
		if(StringUtils.isNotBlank(dgm.getSort()))
			orderString = " order by " + dgm.getSort() + " " + dgm.getOrder(); //排序
		//增加条件
		StringBuffer sb = new StringBuffer();
		Map<String,Object> params = new HashMap<String,Object>();
		
		if(user != null) {
			if(StringUtils.isNotBlank(user.getUserName())) {
				sb.append(" and user.name like :userName");
				params.put("userName", "%"+user.getUserName()+"%");
			}
			if(user.getUserSex() != null) {
				sb.append(" and user.age = :age");
				params.put("age", user.getAge());
			}
			if(user.getBirthday() != null) {
				sb.append(" and user.birthday = :birthday");
				params.put("birthday", user.getBirthday());
			}
			if(user.getDeptId() != null) {
				sb.append(" and dept.id = :deptId");
				params.put("deptId", user.getDeptId());
			}
		}
		
		//查询总数可以用getHibernateTemplate()，我下面用的是createQuery
		//Hibernate的动态条件查询用DetachedCriteria是一个比较好的解决
//			List totalList = getHibernateTemplate().findByNamedParam(countQuery, params.keySet().toArray(new String[0]), params.values().toArray());
//			int total = ((Long)totalList.iterator().next()).intValue();
		
		Query queryTotal = getSession().createQuery(countQuery + sb.toString());
		Query queryList = getSession().createQuery(fullQuery + sb.toString() + orderString)
							.setFirstResult((dgm.getPage() - 1) * dgm.getRows()).setMaxResults(dgm.getRows());
		if(params!=null && !params.isEmpty()){
			Iterator<String> it = params.keySet().iterator();
			while(it.hasNext()){					
				String key = it.next();	
				queryTotal.setParameter(key, params.get(key));
				queryList.setParameter(key, params.get(key));
			}	
		}			
		int total = ((Long)queryTotal.uniqueResult()).intValue(); //这里必须先转成Long再取intValue，不能转成Integer
		*/
		//List list = queryList.list();
		result.put("total", total);
		result.put("rows", list1);			
		return result;
	}
	
	@Override
	public void deleteUsers(List<String> usersId) throws Exception {
		if(usersId != null && usersId.size() > 0) {
			for (String userid : usersId) {
				usersMapper.deleteByPrimaryKey(userid);
			}
		}
	}
}
