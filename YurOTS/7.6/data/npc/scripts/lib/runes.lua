
 -- Respawn position set
 --ox = 44
 --oy = 5
 --oz = 6
 
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
 
 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
 		selfSay('Hello ' .. creatureGetName(cid) .. '! Eu Vendo hmms (100gp), uhs (100gp), gfbs (100gp), explosions (100gp), sd (100gp)  e blank runes (5gps).')
 		focus = cid
 		talk_start = os.clock()
 
 	elseif string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
 		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
 	elseif msgcontains(msg, 'hmm') and focus == cid then
 		buy(cid,3136,100,100)
 		talk_start = os.clock()
 	elseif msgcontains(msg, '1 hmm') and focus == cid then
 		buy(cid,3136,100,100)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'hmm') and focus == cid then
 		buy(cid,3136,100,100)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'uh') and focus == cid then
 		buy(cid,3098,100,100)
 		talk_start = os.clock()	elseif msgcontains(msg, '1 uh') and focus == cid then
 		buy(cid,3098,100,100)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'uh') and focus == cid then
 		buy(cid,3098,100,100)
 		talk_start = os.clock()
 
 	elseif msgcontains(msg, 'gfb') and focus == cid then
 		buy(cid,3129,100,100)
 		talk_start = os.clock()	elseif msgcontains(msg, '1 gfb') and focus == cid then
 		buy(cid,3129,100,1000)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'gfb') and focus == cid then
 		buy(cid,3129,100,100)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'explosion') and focus == cid then
 		buy(cid,3138,100,100)
 		talk_start = os.clock()	elseif msgcontains(msg, '1 explosion') and focus == cid then
 		buy(cid,3138,100,100)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'explosion') and focus == cid then
 		buy(cid,3138,100,100)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'sd') and focus == cid then
 		buy(cid,3093,100,100)
 		talk_start = os.clock()	elseif msgcontains(msg, '1 sd') and focus == cid then
 		buy(cid,3093,100,100)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'sd') and focus == cid then
 		buy(cid,3093,100,100)
 		talk_start = os.clock()
 
 	elseif msgcontains(msg, 'blank') and focus == cid then
 		buy(cid,3085,10,5)
 		talk_start = os.clock()
 
 	elseif string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
 		selfSay('Volte Sempre!, ' .. creatureGetName(cid) .. '!')
 		focus = 0
 		talk_start = 0
 	end
 end
 
 
 function onCreatureChangeOutfit(creature)
 
 end
 
 
 function onThink()
 	if (os.clock() - talk_start) > 30 then
 		if focus > 0 then
 			selfSay('MsN>>alfalfa_32@hotmail.com...')
 		end
 			focus = 0
 	end
 end
