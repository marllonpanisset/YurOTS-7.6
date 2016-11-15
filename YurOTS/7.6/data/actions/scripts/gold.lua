function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 2148 and item.type == 100 then
   		doRemoveItem(item.uid,item.type)
   		doPlayerAddItem(cid,2152,1)
   		doPlayerSendTextMessage(cid,22,"Vc trocou  100 gp por 1 platinum.")
   	elseif item.itemid == 2148 and item.type < 100 then
   		doPlayerSendTextMessage(cid,22,"Vc precisa de 100 gp para trocar por 1 platinum.")
   	end
   end
