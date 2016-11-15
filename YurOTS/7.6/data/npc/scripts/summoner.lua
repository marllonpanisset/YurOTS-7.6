
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

 endfunction msgcontains(txt, str)
 	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
 end


 function onCreatureSay(cid, type, msg)
 	msg = string.lower(msg)

 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 4 then
 		selfSay('Hi stupid human..Um..oh, I mean, Hello Stranger,  I can summon Rats (10gps), Warlocks (8k), Behemoths (9k), Demon (10k), Orshabaal (50k). I too can call a combo for good players, the combos\'s: Infernal Combo (15k), Pharao Triplest Combo (30k) and Master Combo (80k). What you want?.')
 		focus = cid
 		talk_start = os.clock()
 	end

 	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
 		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
 	end

 	if msgcontains(msg, 'demon') and focus == cid then
		if pay(cid,10000) then
		selfSay('/m Demon')
		selfSay('Go Demon, Kill this poor fool!')
		talk_star = os.clock()
	else

		selfSay('You don\'t have enough money.')
		talk_star = os.clock()
	end

 	elseif msgcontains(msg, 'warlock') and focus == cid then
		if pay(cid,8000) then
		selfSay('/m Warlock')
		selfSay('Go Warlock, Kill this poor fool!')
		talk_star = os.clock()
	else

		selfSay('You don\'t have enough money.')
		talk_star = os.clock()
	end

 	elseif msgcontains(msg, 'infernal combo') and focus == cid then
		if pay(cid,15000) then
		selfSay('/m Demon')
		selfSay('/m Warlock')
		selfSay('The combo? Bwahaha! Suffer and perish...')
		talk_star = os.clock()
	else

		selfSay('You don\'t have enough money.')
		talk_star = os.clock()
	end

 	elseif msgcontains(msg, 'pharao triplest combo') and focus == cid then
		if pay(cid,30000) then
		selfSay('/m Omruc')
		selfSay('/m Rahemos')
		selfSay('/m Thalas')
		selfSay('The Triple Attack! Wow fucking human..you are crazy?')
		talk_star = os.clock()
	else

		selfSay('You don\'t have enough money.')
		talk_star = os.clock()
	end

 	elseif msgcontains(msg, 'master combo') and focus == cid then
		if pay(cid,80000) then
		selfSay('/m Orshabaal')
		selfSay('/m Orshabaal')
		selfSay('LOL?!!! THE MASTER COMBO?? HUMAN..you will die, so I have a simple word for you: NOOB.')
		talk_star = os.clock()
	else

		selfSay('You don\'t have enough money.')
		talk_star = os.clock()
	end

 	elseif msgcontains(msg, 'rat') and focus == cid then
		if pay(cid,10) then
		selfSay('/m Rat')
		selfSay('Go Rat, Fuck yourself because you will die!')
		talk_star = os.clock()
	else

		selfSay('You don\'t have enough money.')
		talk_star = os.clock()
	end

 	elseif msgcontains(msg, 'orshabaal') and focus == cid then
		if pay(cid,50000) then
		selfSay('/m Orshabaal')
		selfSay('MWAHAHAHAHAHA!!!! YOU THINK YOU CAN KILL THE MASTER OF THE MASTER?? YOU MUST BE JOKING, FOOL!!!!!!!!!')
		talk_star = os.clock()
	else

		selfSay('You don\'t have enough money.')
		talk_star = os.clock()
	end

 	elseif msgcontains(msg, 'behemoth') and focus == cid then
		if pay(cid,9000) then
		selfSay('/m Behemoth')
		selfSay('Go Behemoth, Kill this poor fool, Fucking creature WHO have a suck BIG ASS!!')
		talk_star = os.clock()
	else

		selfSay('You don\'t have enough money.')
		talk_star = os.clock()
	end

 	elseif string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
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
	if focus ~= 0 then
		if getDistanceToCreature(focus) > 5 then
			selfSay('Good bye then.')
			focus = 0
		end
	end
end
