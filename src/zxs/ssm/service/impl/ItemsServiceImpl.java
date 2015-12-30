package zxs.ssm.service.impl;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import zxs.ssm.mapper.ItemsMapper;
import zxs.ssm.mapper.ItemsMapperCustom;
import zxs.ssm.po.Items;
import zxs.ssm.po.ItemsCustom;
import zxs.ssm.po.ItemsCustomVo;
import zxs.ssm.services.ItemsService;

public class ItemsServiceImpl implements ItemsService{

	@Autowired
	private ItemsMapperCustom itemsMapperCustom;
	@Autowired
	private ItemsMapper itemsMapper;
	
	
	@Override
	public List<ItemsCustom> findItemsList(ItemsCustomVo itemsCustomVo) throws Exception {
		List<ItemsCustom> list = itemsMapperCustom.findItemsList(itemsCustomVo);
		return list;
	}

	@Override
	public ItemsCustom findItemsById(Integer id) throws Exception {
		Items items = itemsMapper.selectByPrimaryKey(id);
		ItemsCustom itemsCustom = new ItemsCustom();
		BeanUtils.copyProperties(items, itemsCustom);
		return itemsCustom;
	}

	@Override
	public void updateItems(Integer id, ItemsCustom itemsCustom) throws Exception {
		itemsCustom.setId(id);
		itemsMapper.updateByPrimaryKeyWithBLOBs(itemsCustom);
		
	}

}
