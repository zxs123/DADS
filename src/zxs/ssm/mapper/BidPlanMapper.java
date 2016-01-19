package zxs.ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import zxs.ssm.po.BidPan;
import zxs.ssm.po.BidPlanExample;

public interface BidPlanMapper {
    int countByExample(BidPlanExample example);

    int deleteByExample(BidPlanExample example);

    int deleteByPrimaryKey(String pId);

    int insert(BidPan record);

    int insertSelective(BidPan record);

    List<BidPan> selectByExample(BidPlanExample example);

    BidPan selectByPrimaryKey(String pId);

    int updateByExampleSelective(@Param("record") BidPan record, @Param("example") BidPlanExample example);

    int updateByExample(@Param("record") BidPan record, @Param("example") BidPlanExample example);

    int updateByPrimaryKeySelective(BidPan record);

    int updateByPrimaryKey(BidPan record);
}