package zxs.ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import zxs.ssm.po.Bids;
import zxs.ssm.po.BidsExample;

public interface BidsMapper {
    int countByExample(BidsExample example);

    int deleteByExample(BidsExample example);

    int deleteByPrimaryKey(String bidId);

    int insert(Bids record);

    int insertSelective(Bids record);

    List<Bids> selectByExample(BidsExample example);

    Bids selectByPrimaryKey(String bidId);

    int updateByExampleSelective(@Param("record") Bids record, @Param("example") BidsExample example);

    int updateByExample(@Param("record") Bids record, @Param("example") BidsExample example);

    int updateByPrimaryKeySelective(Bids record);

    int updateByPrimaryKey(Bids record);
}