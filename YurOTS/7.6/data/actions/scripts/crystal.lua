function onUse(cid, item, frompos, item2, topos)
  	if doRemoveItem(item.uid,1) then
  		doPlayerSendTextMessage(cid,22,"Vc trocou 1 crystal por 100 platinum.")
  		doPlayerAddItem(cid,2152,100)
  	end
  end
