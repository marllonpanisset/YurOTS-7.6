focus = 0
 talk_start = 0
 target = 0
 following = false
 attacking = false
 
 function onThingMove(creature, thing, oldpos, oldstackpos)
 
 end
 
 
 function onCreatureAppear(creature)
 
 end
 
 
 function onCreatureDisappear(cid, pos)
 	if focus == cid then
         selfSay('Good bye then.')
         focus = 0
         talk_start = 0
 	end
 end
 
 
 function onCreatureTurn(creature)
 
 end
 
 function msgcontains(txt, str)
 	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
 end
 
 
 function onCreatureSay(cid, type, msg)
 	msg = string.lower(msg)
 
 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 5 then
 		selfSay('Hello ' .. creatureGetName(cid) .. '! I sell Shields,Armors,Weapons,Legs and Helmets.Also sell Boots of haste(7k).')
 		focus = cid
 		talk_start = os.clock()
 	end
 
 	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 5 then
 		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
 	end
 
 	if msgcontains(msg, 'armors') and focus == cid then
 		selfSay('I sell plate armor(600gp),Crown armor(7k) and Knight Armor(4k)')
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'plate armor') and focus == cid then
 		buy(cid,2463,1,600)
 		talk_start = os.clock()
 	end
     if msgcontains(msg, 'crown armor') and focus == cid then
 		buy(cid,2487,100,7000)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'knight armor') and focus == cid then
 		buy(cid,2476,1,4000)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'shields') and focus == cid then
 		selfSay('I sell Dwarven Shield(250gp),Crown Shield(5k) and Dragon Shield(3k)')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'dwarven shield') and focus == cid then
 		buy(cid,2525,1,250)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'crown shield') and focus == cid then
 		buy(cid,2519,1,45000)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'dragon shield') and focus == cid then
 		buy(cid,2516,1,3000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'weapons') and focus == cid then
 		selfSay('I sell Dragon hammer(3k),Fire sword(4k) and Fire axe(4k)')
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'dragon hammer') and focus == cid then
 		buy(cid,2434,1,3000)
 		talk_start = os.clock()
 	end


 	if msgcontains(msg, 'fire sword') and focus == cid then
 		buy(cid,2392,1,4000)
 		talk_start = os.clock()
 	end


 	if msgcontains(msg, 'fire axe') and focus == cid then
 		buy(cid,2432,1,4000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'helmets') and focus == cid then
 		selfSay('I sell Crown Helmet(3k) and Soldier Helmet(280gp)')
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'crown helmet') and focus == cid then
 		buy(cid,2491,1,3000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'soldier helmet') and focus == cid then
 		buy(cid,2481,1,280)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'legs') and focus == cid then
 		selfSay('I sell Plate Legs(700gp) and Crown Legs(6.5k)')
 		talk_start = os.clock()
 	end


 	if msgcontains(msg, 'plate legs') and focus == cid then
 		buy(cid,2647,1,700)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'crown legs') and focus == cid then
 		buy(cid,2488,1,6500)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'boots of haste') and focus == cid then
 		buy(cid,2195,1,7000)
 		talk_start = os.clock()
 	end


 	if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 5 then
 		selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
 		focus = 0
 		talk_start = 0
 	end
 end
 
 
 function onCreatureChangeOutfit(creature)
 
 end
 
 
 function onThink()
 	if (os.clock() - talk_start) > 30 then
 		if focus > 0 then
 			selfSay('Next Please...')
 		end
 			focus = 0
 	end
 end
 
