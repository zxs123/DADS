package zxs.ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import zxs.ssm.po.BidPlan;
import zxs.ssm.po.BidPlanExample;

public interface BidPlanMapper {
    int countByExample(BidPlanExample example);

    int deleteByExample(BidPlanExample example);

    int deleteByPrimaryKey(String pId);

    int insert(BidPlan record);

    int insertSelective(BidPlan record);

    List<BidPlan> selectByExample(BidPlanExample example);

    BidPlan selectByPrimaryKey(String pId);

    int updateByExampleSelective(@Param("record") BidPlan record, @Param("example") BidPlanExample example);

    int updateByExample(@Param("record") BidPlan record, @Param("example") BidPlanExample example);

    int updateByPrimaryKeySelective(BidPlan record);

    int updateByPrimaryKey(BidPlan record);
}