package zxs.ssm.mapper;

import java.util.List;
import zxs.ssm.po.ItemsCustom;
import zxs.ssm.po.ItemsCustomVo;

public interface ItemsMapperCustom {

	public List<ItemsCustom> findItemsList(ItemsCustomVo itemsCustomVo) throws Exception;
}