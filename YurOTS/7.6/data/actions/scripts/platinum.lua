function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 2152 and item.type == 100 then
   		doRemoveItem(item.uid,item.type)
   		doPlayerAddItem(cid,2160,1)
   		doPlayerSendTextMessage(cid,22,"Vc trocou 100 platinum por 1 crystal.")
   	elseif item.itemid == 2152 and item.type < 100 then
   		doRemoveItem(item.uid,1)
   		doPlayerAddItem(cid,2148,100)
   		doPlayerSendTextMessage(cid,22,"Vc trocou 1 platinum por 100 gp.")
   	end
   end
