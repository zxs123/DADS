package zxs.ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import zxs.ssm.po.FunctionLimit;
import zxs.ssm.po.FunctionLimitExample;

public interface FunctionLimitMapper {
    int countByExample(FunctionLimitExample example);

    int deleteByExample(FunctionLimitExample example);

    int deleteByPrimaryKey(Integer flId);

    int insert(FunctionLimit record);

    int insertSelective(FunctionLimit record);

    List<FunctionLimit> selectByExample(FunctionLimitExample example);

    FunctionLimit selectByPrimaryKey(Integer flId);

    int updateByExampleSelective(@Param("record") FunctionLimit record, @Param("example") FunctionLimitExample example);

    int updateByExample(@Param("record") FunctionLimit record, @Param("example") FunctionLimitExample example);

    int updateByPrimaryKeySelective(FunctionLimit record);

    int updateByPrimaryKey(FunctionLimit record);
}