package zxs.ssm.services;

import java.util.List;

import zxs.ssm.po.ItemsCustom;
import zxs.ssm.po.ItemsCustomVo;

public interface ItemsService {
	public List<ItemsCustom> findItemsList(ItemsCustomVo itemsCustomVo) throws Exception;

	public ItemsCustom findItemsById(Integer id)throws Exception;
	
	public void updateItems(Integer id,ItemsCustom itemsCustom)throws Exception;

}
