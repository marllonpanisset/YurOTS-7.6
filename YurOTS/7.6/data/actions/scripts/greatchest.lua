function onUse(cid, item, frompos, item2, topos)

  	-- Demon Armor quest
  	if item.uid == 7650 then
  		queststatus = getPlayerStorageValue(cid,9000)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 20 then
  				doPlayerSendTextMessage(cid,22,"You have found a warlord sword.")
  				doPlayerAddItem(cid,3234,1)
  				setPlayerStorageValue(cid,9000,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 20 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It's empty.")
  		end

  	-- Magic Sword quest
  	elseif item.uid == 7651 then
  		queststatus = getPlayerStorageValue(cid,9000)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found a great axe.")
  				doPlayerAddItem(cid,3241,1)
  				setPlayerStorageValue(cid,9000,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It's empty.")
  		end

  	-- stonecutter axe quest
  	elseif item.uid == 7652 then
  		queststatus = getPlayerStorageValue(cid,9000)
  		if queststatus == -1 then			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found a blessed shield.")
  				doPlayerAddItem(cid,3361,1)
  				setPlayerStorageValue(cid,9000,1)
  			else				
                            doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It's empty.")
  		end
   
    --Present Box--
  	elseif item.uid == 7653 then
  		queststatus = getPlayerStorageValue(cid,9000)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found a demon legs.")
  				doPlayerAddItem(cid,3327,1)
  				setPlayerStorageValue(cid,9000,1)
  			else				
                           doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It's empty.")
  		end
--Present Box--
  	elseif item.uid == 7654 then
  		queststatus = getPlayerStorageValue(cid,9000)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found a thunder hammer.")
  				doPlayerAddItem(cid,3247,1)
  				setPlayerStorageValue(cid,9000,1)
  			else				
                           doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It's empty.")
  		end
--Present Box--
  	elseif item.uid == 7655 then
  		queststatus = getPlayerStorageValue(cid,9000)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found a dragon scale legs.")
  				doPlayerAddItem(cid,3301,1)
  				setPlayerStorageValue(cid,9000,1)
  			else				
                           doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It's empty.")
  		end
--Present Box--
  	elseif item.uid == 7656 then
  		queststatus = getPlayerStorageValue(cid,9000)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found a demon helmet.")
  				doPlayerAddItem(cid,3325,1)
  				setPlayerStorageValue(cid,9000,1)
  			else				
                           doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It's empty.")
  		end
else
return 0
end
return 1
end