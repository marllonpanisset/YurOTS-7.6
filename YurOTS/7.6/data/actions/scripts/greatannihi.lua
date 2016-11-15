function onUse(cid, item, frompos, item2, topos)
  	-- annihilator
  	if item.uid == 5753 then
  		if item.itemid == 2712 then

  			player1pos = {x=132, y=269, z=8, stackpos=253}
  			player1 = getThingfromPos(player1pos)

  			player2pos = {x=131, y=269, z=8, stackpos=253}
  			player2 = getThingfromPos(player2pos)

  			player3pos = {x=130, y=269, z=8, stackpos=253}
  			player3 = getThingfromPos(player3pos)

  			player4pos = {x=129, y=269, z=8, stackpos=253}
  			player4 = getThingfromPos(player4pos)

                        player5pos = {x=128, y=269, z=8, stackpos=253}
  			player5 = getThingfromPos(player5pos)
                        
                        player6pos = {x=127, y=269, z=8, stackpos=253}
  			player6 = getThingfromPos(player6pos)
                        
                        player7pos = {x=126, y=269, z=8, stackpos=253}
  			player7 = getThingfromPos(player7pos)
                        
                        player8pos = {x=125, y=269, z=8, stackpos=253}
  			player8 = getThingfromPos(player8pos)
 
                        player9pos = {x=124, y=269, z=8, stackpos=253}
  			player9 = getThingfromPos(player9pos)

                        player10pos = {x=123, y=269, z=8, stackpos=253}
  			player10 = getThingfromPos(player10pos)
  
                        player11pos = {x=122, y=269, z=8, stackpos=253}
  			player11 = getThingfromPos(player11pos)

                        player12pos = {x=121, y=269, z=8, stackpos=253}
  			player12 = getThingfromPos(player12pos)

                        player13pos = {x=120, y=269, z=8, stackpos=253}
  			player13 = getThingfromPos(player13pos)

                        player14pos = {x=119, y=269, z=8, stackpos=253}
  			player14 = getThingfromPos(player14pos)

                        player15pos = {x=118, y=269, z=8, stackpos=253}
  			player15 = getThingfromPos(player15pos)

                         
                      



  			if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 and player5.itemid > 0 and player6.itemid > 0 and player7.itemid > 0 and player8.itemid > 0 and player9.itemid > 0 and player10.itemid > 0 and player11.itemid > 0 and player12.itemid > 0 and player13.itemid > 0 and player14.itemid > 0 and player15.itemid > 0 then

  				player1level = getPlayerLevel(player1.uid)
  				player2level = getPlayerLevel(player2.uid)
  				player3level = getPlayerLevel(player3.uid)
  				player4level = getPlayerLevel(player4.uid)
                                player5level = getPlayerLevel(player5.uid)
                                player6level = getPlayerLevel(player6.uid)
                                player7level = getPlayerLevel(player7.uid)
                                player8level = getPlayerLevel(player8.uid)
                                player9level = getPlayerLevel(player9.uid)
                                player10level = getPlayerLevel(player10.uid)
                                player11level = getPlayerLevel(player11.uid)
                                player12level = getPlayerLevel(player12.uid)
                                player13level = getPlayerLevel(player13.uid)
                                player14level = getPlayerLevel(player14.uid)
                                player15level = getPlayerLevel(player15.uid)

  				questlevel = 100

  				if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel and player5level >= questlevel and player6level >= questlevel and player7level >= questlevel and player8level >= questlevel and player9level >= questlevel and player10level >= questlevel and player11level >= questlevel and player12level >= questlevel and player13level >= questlevel and player14level >= questlevel and player15level >= questlevel then

  					queststatus1 = getPlayerStorageValue(player1.uid,5753)
  					queststatus2 = getPlayerStorageValue(player2.uid,5753)
  					queststatus3 = getPlayerStorageValue(player3.uid,5753)
  					queststatus4 = getPlayerStorageValue(player4.uid,5753)
                                        queststatus5 = getPlayerStorageValue(player5.uid,5753)
                                        queststatus6 = getPlayerStorageValue(player6.uid,5753)
                                        queststatus7 = getPlayerStorageValue(player7.uid,5753)
                                        queststatus8 = getPlayerStorageValue(player8.uid,5753)
                                        queststatus9 = getPlayerStorageValue(player9.uid,5753)
                                        queststatus10 = getPlayerStorageValue(player10.uid,5753)
                                        queststatus11 = getPlayerStorageValue(player11.uid,5753)
                                        queststatus12 = getPlayerStorageValue(player12.uid,5753)
                                        queststatus13 = getPlayerStorageValue(player13.uid,5753)
                                        queststatus14 = getPlayerStorageValue(player14.uid,5753)
                                        queststatus15 = getPlayerStorageValue(player15.uid,5753)


  					if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then

  						demon1pos = {x=117, y=255, z=8}
                                                demon2pos = {x=119, y=255, z=8}
                                                demon3pos = {x=121, y=255, z=8}
                                                demon4pos = {x=123, y=255, z=8}
                                                demon5pos = {x=125, y=255, z=8}
                                                demon6pos = {x=127, y=255, z=8}
demon7pos = {x=129, y=255, z=8}
demon8pos = {x=131, y=255, z=8}
demon9pos = {x=133, y=255, z=8}
demon10pos = {x=135, y=257, z=8}
demon11pos = {x=136, y=257, z=8}
demon12pos = {x=118, y=259, z=8}
demon13pos = {x=120, y=259, z=8}
demon14pos = {x=122, y=259, z=8}
demon15pos = {x=124, y=259, z=8}
demon16pos = {x=126, y=259, z=8}
demon17pos = {x=128, y=259, z=8}
demon18pos = {x=130, y=259, z=8}
demon19pos = {x=132, y=259, z=8}
demon20pos = {x=134, y=259, z=8}
demon21pos = {x=118, y=257, z=8}

                                                doSummonCreature("Demon1", demon1pos)
                                                doSummonCreature("Demon1", demon2pos)
                                                doSummonCreature("Demon1", demon3pos)
                                                doSummonCreature("Demon1", demon4pos)
                                                doSummonCreature("Demon1", demon5pos)
                                                doSummonCreature("Demon1", demon6pos)
doSummonCreature("Demon1", demon7pos)
doSummonCreature("Demon1", demon8pos)
doSummonCreature("Demon1", demon9pos)
doSummonCreature("Demon1", demon10pos)
doSummonCreature("Demon1", demon11pos)
doSummonCreature("Demon1", demon12pos)
doSummonCreature("Demon1", demon13pos)
doSummonCreature("Demon1", demon14pos)
doSummonCreature("Demon1", demon15pos)
doSummonCreature("Demon1", demon16pos)
doSummonCreature("Demon1", demon17pos)
doSummonCreature("Demon1", demon18pos)
doSummonCreature("Demon1", demon19pos)
doSummonCreature("Demon1", demon20pos)
doSummonCreature("Orshabaal", demon21pos)

                                                nplayer1pos = {x=134, y=257, z=8}
  						nplayer2pos = {x=133, y=257, z=8}
  						nplayer3pos = {x=132, y=257, z=8}
  						
nplayer4pos = {x=131, y=257, z=8}
nplayer5pos = {x=130, y=257, z=8}
nplayer6pos = {x=129, y=257, z=8}
nplayer7pos = {x=128, y=257, z=8}
nplayer8pos = {x=127, y=257, z=8}
nplayer9pos = {x=126, y=257, z=8}
nplayer10pos = {x=125, y=257, z=8}
nplayer11pos = {x=124, y=257, z=8}
nplayer12pos = {x=123, y=257, z=8}
nplayer13pos = {x=122, y=257, z=8}
nplayer14pos = {x=121, y=257, z=8}
nplayer15pos = {x=120, y=257, z=8}


  						doSendMagicEffect(player1pos,10)
  						doSendMagicEffect(player2pos,10)
  						doSendMagicEffect(player3pos,10)
  						doSendMagicEffect(player4pos,10)

  						doSendMagicEffect(player5pos,10)

  						doSendMagicEffect(player6pos,10)

  						doSendMagicEffect(player7pos,10)

  						doSendMagicEffect(player8pos,10)

  						doSendMagicEffect(player9pos,10)

  						doSendMagicEffect(player10pos,10)

  						doSendMagicEffect(player11pos,10)

  						doSendMagicEffect(player12pos,10)

  						doSendMagicEffect(player13pos,10)

  						doSendMagicEffect(player14pos,10)

  						doSendMagicEffect(player15pos,10)


  						doTeleportThing(player1.uid,nplayer1pos)
  						doTeleportThing(player2.uid,nplayer2pos)
  						doTeleportThing(player3.uid,nplayer3pos)
  						doTeleportThing(player4.uid,nplayer4pos)
doTeleportThing(player5.uid,nplayer5pos)
doTeleportThing(player6.uid,nplayer6pos)
doTeleportThing(player7.uid,nplayer7pos)
doTeleportThing(player8.uid,nplayer8pos)
doTeleportThing(player9.uid,nplayer9pos)
doTeleportThing(player10.uid,nplayer10pos)
doTeleportThing(player11.uid,nplayer11pos)
doTeleportThing(player12.uid,nplayer12pos)
doTeleportThing(player13.uid,nplayer13pos)
doTeleportThing(player14.uid,nplayer14pos)
doTeleportThing(player15.uid,nplayer15pos)


  						doSendMagicEffect(nplayer1pos,10)
  						doSendMagicEffect(nplayer2pos,10)
  						doSendMagicEffect(nplayer3pos,10)
  						doSendMagicEffect(nplayer4pos,10)
doSendMagicEffect(nplayer5pos,10)
doSendMagicEffect(nplayer6pos,10)
doSendMagicEffect(nplayer7pos,10)
doSendMagicEffect(nplayer8pos,10)
doSendMagicEffect(nplayer9pos,10)
doSendMagicEffect(nplayer10pos,10)
doSendMagicEffect(nplayer11pos,10)
doSendMagicEffect(nplayer12pos,10)
doSendMagicEffect(nplayer13pos,10)
doSendMagicEffect(nplayer14pos,10)
doSendMagicEffect(nplayer15pos,10)

                                                

  						doTransformItem(item.uid,item.itemid-1)

  					else
  						doPlayerSendTextMessage(cid,22,"Somebody in your team has already done this quest.")
  					end
  				else
  					doPlayerSendTextMessage(cid,22,"All players must have level 100 to enter.")
  				end
  			else
  				doPlayerSendTextMessage(cid,22,"You need 15 players in your team.")
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