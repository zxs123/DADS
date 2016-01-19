package zxs.ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import zxs.ssm.po.NotSign;
import zxs.ssm.po.NotSignExample;

public interface NotSignMapper {
    int countByExample(NotSignExample example);

    int deleteByExample(NotSignExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(NotSign record);

    int insertSelective(NotSign record);

    List<NotSign> selectByExample(NotSignExample example);

    NotSign selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") NotSign record, @Param("example") NotSignExample example);

    int updateByExample(@Param("record") NotSign record, @Param("example") NotSignExample example);

    int updateByPrimaryKeySelective(NotSign record);

    int updateByPrimaryKey(NotSign record);
}