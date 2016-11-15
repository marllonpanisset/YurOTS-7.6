-- the id of the creature we are attacking, following, etc.
 
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
 
 endfunction msgcontains(txt, str)
 	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
 end
 
 
 function onCreatureSay(cid, type, msg)
 	msg = string.lower(msg)
 
 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
 		selfSay('Hello ' .. creatureGetName(cid) .. '! I sell Rings. Say "offer" to see pricelist.')
 		focus = cid
 		talk_start = os.clock()
 	end	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
 		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
 	end	if msgcontains(msg, 'offer') and focus == cid then
 		selfSay('I sell Time Ring (50gps),Club Ring (50gps),Sword Ring(60gps),Axe Ring (40gps).')
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'sword ring') and focus == cid then
 		buy(cid,3029,1,0)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'club ring') and focus == cid then
 		buy(cid,3031,1,0)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'axe ring') and focus == cid then
 		buy(cid,3030,1,0)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'time ring') and focus == cid then
 		buy(cid,2991,1,0)
 		talk_start = os.clock()
 	end
 	if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
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
 
