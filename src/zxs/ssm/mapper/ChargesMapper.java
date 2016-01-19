package zxs.ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import zxs.ssm.po.Charges;
import zxs.ssm.po.ChargesExample;

public interface ChargesMapper {
    int countByExample(ChargesExample example);

    int deleteByExample(ChargesExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Charges record);

    int insertSelective(Charges record);

    List<Charges> selectByExample(ChargesExample example);

    Charges selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Charges record, @Param("example") ChargesExample example);

    int updateByExample(@Param("record") Charges record, @Param("example") ChargesExample example);

    int updateByPrimaryKeySelective(Charges record);

    int updateByPrimaryKey(Charges record);
}