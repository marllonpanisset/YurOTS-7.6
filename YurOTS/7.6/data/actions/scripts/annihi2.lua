function onUse(cid, item, frompos, item2, topos)
  	-- annihilator
  	if item.uid == 4433 then
  		if item.itemid == 2712 then

  			player1pos = {x=121, y=243, z=8, stackpos=253}
  			player1 = getThingfromPos(player1pos)

  			player2pos = {x=120, y=243, z=8, stackpos=253}
  			player2 = getThingfromPos(player2pos)

  			player3pos = {x=119, y=243, z=8, stackpos=253}
  			player3 = getThingfromPos(player3pos)

  			player4pos = {x=118, y=243, z=8, stackpos=253}
  			player4 = getThingfromPos(player4pos)
                         
                        sovpos = {x=127, y=227, z=8}
                        sov = getThingfromPos(sovpos)


  			if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then

  				player1level = getPlayerLevel(player1.uid)
  				player2level = getPlayerLevel(player2.uid)
  				player3level = getPlayerLevel(player3.uid)
  				player4level = getPlayerLevel(player4.uid)

  				questlevel = 100

  				if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel then

  					queststatus1 = getPlayerStorageValue(player1.uid,3322)
  					queststatus2 = getPlayerStorageValue(player2.uid,3322)
  					queststatus3 = getPlayerStorageValue(player3.uid,3322)
  					queststatus4 = getPlayerStorageValue(player4.uid,3322)

  					if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then

  						demon1pos = {x=117, y=229, z=8}
                                                demon2pos = {x=119, y=229, z=8}
                                                demon3pos = {x=121, y=231, z=8}
                                                demon4pos = {x=122, y=231, z=8}
                                                demon5pos = {x=118, y=233, z=8}
                                                demon6pos = {x=120, y=233, z=8}

                                                doSummonCreature("Demon", demon1pos)
                                                doSummonCreature("Demon", demon2pos)
                                                doSummonCreature("Demon", demon3pos)
                                                doSummonCreature("Demon", demon4pos)
                                                doSummonCreature("Demon", demon5pos)
                                                doSummonCreature("Demon", demon6pos)

                                                nplayer1pos = {x=120, y=231, z=8}
  						nplayer2pos = {x=119, y=231, z=8}
  						nplayer3pos = {x=118, y=231, z=8}
  						nplayer4pos = {x=117, y=231, z=8}

  						doSendMagicEffect(player1pos,10)
  						doSendMagicEffect(player2pos,10)
  						doSendMagicEffect(player3pos,10)
  						doSendMagicEffect(player4pos,10)

  						doTeleportThing(player1.uid,nplayer1pos)
  						doTeleportThing(player2.uid,nplayer2pos)
  						doTeleportThing(player3.uid,nplayer3pos)
  						doTeleportThing(player4.uid,nplayer4pos)

  						doSendMagicEffect(nplayer1pos,10)
  						doSendMagicEffect(nplayer2pos,10)
  						doSendMagicEffect(nplayer3pos,10)
  						doSendMagicEffect(nplayer4pos,10)
                                                doCreateItem(3226,1,sov)

  						doTransformItem(item.uid,item.itemid-1)

  					else
  						doPlayerSendTextMessage(cid,22,"Somebody in your team has already done this quest.")
  					end
  				else
  					doPlayerSendTextMessage(cid,22,"All players must have level 120 to enter.")
  				end
  			else
  				doPlayerSendTextMessage(cid,22,"You need 4 players in your team.")
  			end
  		elseif item.itemid == 2711 then

               if getPlayerAccess(cid) == 1 then
            
  				doTransformItem(item.uid,item.itemid+1)
                                  
  			else
  				doPlayerSendTextMessage(cid,22,"Only GM can reset this switch.")
  			end
  		end

  end	
  return 1
  end