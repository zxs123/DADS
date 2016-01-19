package zxs.ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import zxs.ssm.po.Contracts;
import zxs.ssm.po.ContractsExample;

public interface ContractsMapper {
    int countByExample(ContractsExample example);

    int deleteByExample(ContractsExample example);

    int deleteByPrimaryKey(String cId);

    int insert(Contracts record);

    int insertSelective(Contracts record);

    List<Contracts> selectByExample(ContractsExample example);

    Contracts selectByPrimaryKey(String cId);

    int updateByExampleSelective(@Param("record") Contracts record, @Param("example") ContractsExample example);

    int updateByExample(@Param("record") Contracts record, @Param("example") ContractsExample example);

    int updateByPrimaryKeySelective(Contracts record);

    int updateByPrimaryKey(Contracts record);
}