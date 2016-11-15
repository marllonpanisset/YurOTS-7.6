function onUse(cid, item, frompos, item2, topos)
	if item.itemid == 1945 then
		doTransformItem(item.uid,1946)
		doTransformItem(1001,1385)
	else
		doTransformItem(item.uid,1945)
		
	end
	return 1
end
