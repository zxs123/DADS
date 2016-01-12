package zxs.ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import zxs.ssm.po.UsersManage;
import zxs.ssm.po.UsersManageExample;

public interface UsersManageMapper {
    int countByExample(UsersManageExample example);

    int deleteByExample(UsersManageExample example);

    int insert(UsersManage record);

    int insertSelective(UsersManage record);

    List<UsersManage> selectByExample(UsersManageExample example);

    int updateByExampleSelective(@Param("record") UsersManage record, @Param("example") UsersManageExample example);

    int updateByExample(@Param("record") UsersManage record, @Param("example") UsersManageExample example);
}