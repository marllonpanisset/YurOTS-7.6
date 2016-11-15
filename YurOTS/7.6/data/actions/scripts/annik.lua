-- annikilator quest --

function onUse(cid, item, frompos, item2, topos)
	if item.uid == 3000 then
		queststatus = getPlayerStorageValue(cid,9000)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a Sword of valor.")
                        doSendMagicEffect(topos,12)
			sword_uid = doPlayerAddItem(cid,2400,1)
                        --doSetItemSpecialDescription(sword_uid, "the Annikilator Magic Sword")--
			setPlayerStorageValue(cid,9000,1)

		else
			doPlayerSendTextMessage(cid,22,"you really have your item of annikilator quest.")
		end

	elseif item.uid == 3001 then
		queststatus = getPlayerStorageValue(cid,9000)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a stonecutter's axe.")
                        doSendMagicEffect(topos,12)
			axe_uid = doPlayerAddItem(cid,2431,1)
                        --doSetItemSpecialDescription(axe_uid, "the Annikilator stonecutter's axe")--
			setPlayerStorageValue(cid,9000,1)

		else
			doPlayerSendTextMessage(cid,22,"you really have your item of annikilator quest.")
		end

	elseif item.uid == 3002 then
		queststatus = getPlayerStorageValue(cid,9000)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a demon armor.")
                        doSendMagicEffect(topos,12)
			armor_uid = doPlayerAddItem(cid,2494,1)
                        --doSetItemSpecialDescription(armor_uid, "the Annikilator Demon Armor")--
			setPlayerStorageValue(cid,9000,1)

		else
			doPlayerSendTextMessage(cid,22,"you really have your item of annikilator quest.")
		end

	elseif item.uid == 3003 then
		queststatus = getPlayerStorageValue(cid,9000)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a golden key.")
                        doSendMagicEffect(topos,12)
			gkey_uid = doPlayerAddItem(cid,2091,1)
                        doSetItemActionId(gkey_uid,6969)
                        --doSetItemSpecialDescription(key_uid, "the Annikilator Golden Key")--
			setPlayerStorageValue(cid,9000,1)

		else
			doPlayerSendTextMessage(cid,22,"you really have your item of annikilator quest.")
		end

	else
		return 0
	end
	return 1
end
