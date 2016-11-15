-- Annihilator script v2.1 by GriZzm0.
--
-- Variables used:
--
-- player?pos 	= The position of the players before teleport.
-- player? 	= Get the thing from playerpos.
-- player?level = Get the players levels.
-- questslevel  = The level you have to be to do this quest.
-- questtatus? 	= Get the quest status of the players.
-- demon?pos 	= The position of the demons.
-- nplayer?pos 	= The position where the players should be teleported too.
--
-- UniqueIDs used:
--
-- 5000 = The switch.
-- 5001 = Demon Armor chest.
-- 5002 = Magic Sword chest.
-- 5003 = Stonecutter Axe chest.
-- 5004 = Present chest.
--

function onUse(cid, item, frompos, item2, topos)
	if item.uid == 5000 then
		if item.itemid == 1945 then

			player1pos = {x=338, y=219, z=12, stackpos=253}
			player1 = getThingfromPos(player1pos)

			player2pos = {x=339, y=219, z=12, stackpos=253}
			player2 = getThingfromPos(player2pos)

			player3pos = {x=340, y=219, z=12, stackpos=253}
			player3 = getThingfromPos(player3pos)

			player4pos = {x=341, y=219, z=12, stackpos=253}
			player4 = getThingfromPos(player4pos)


			if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then

				player1level = getPlayerLevel(player1.uid)
				player2level = getPlayerLevel(player2.uid)
				player3level = getPlayerLevel(player3.uid)
				player4level = getPlayerLevel(player4.uid)

				questlevel = 100

				if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel then

					queststatus1 = getPlayerStorageValue(player1.uid,5000)
					queststatus2 = getPlayerStorageValue(player2.uid,5000)
					queststatus3 = getPlayerStorageValue(player3.uid,5000)
					queststatus4 = getPlayerStorageValue(player4.uid,5000)

					if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then
	
						
						nplayer1pos = {x=353, y=228, z=12}
						nplayer2pos = {x=354, y=228, z=12}
						nplayer3pos = {x=355, y=228, z=12}
						nplayer4pos = {x=356, y=228, z=12}

						doSendMagicEffect(player1pos,2)
						doSendMagicEffect(player2pos,2)
						doSendMagicEffect(player3pos,2)
						doSendMagicEffect(player4pos,2)

						doTeleportThing(player1.uid,nplayer1pos)
						doTeleportThing(player2.uid,nplayer2pos)
						doTeleportThing(player3.uid,nplayer3pos)
						doTeleportThing(player4.uid,nplayer4pos)

						doSendMagicEffect(nplayer1pos,10)
						doSendMagicEffect(nplayer2pos,10)
						doSendMagicEffect(nplayer3pos,10)
						doSendMagicEffect(nplayer4pos,10)

						doTransformItem(item.uid,item.itemid+1)

					else
						doPlayerSendCancel(cid,"Sorry, not possible.")
					end
				else
					doPlayerSendCancel(cid,"Desculpe, não é possivel.")
				end
			else
				doPlayerSendCancel(cid,"Desculpe, não é possivel.")
			end
		elseif item.itemid == 1946 then
			if getPlayerAccess(cid) == 3 then
				doTransformItem(item.uid,item.itemid-1)
			else
				doPlayerSendCancel(cid,"Sorry, not possible.")
			end
		end
	elseif item.uid == 5001 then
		queststatus = getPlayerStorageValue(cid,5000)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid,22,"You have found a demon armor.")
			doPlayerAddItem(cid,2494,1)
			setPlayerStorageValue(cid,5000,1)
		else
			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	elseif item.uid == 5002 then
		queststatus = getPlayerStorageValue(cid,5000)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid,22,"You have found a magic sword.")
			doPlayerAddItem(cid,2400,1)
			setPlayerStorageValue(cid,5000,1)
		else
			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	elseif item.uid == 5003 then
		queststatus = getPlayerStorageValue(cid,5000)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid,22,"You have found a stonecutter axe.")
			doPlayerAddItem(cid,2431,1)
			setPlayerStorageValue(cid,5000,1)
		else
			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	elseif item.uid == 5004 then
		queststatus = getPlayerStorageValue(cid,5000)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid,22,"You have found a present.")
			doPlayerAddItem(cid,1990,1)
			setPlayerStorageValue(cid,5000,1)
		else
			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	end
return 1
end