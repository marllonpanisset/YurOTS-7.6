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
         selfSay('exevo gran mas vis')
         selfSay('orshabaal_deathstar')
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

 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 4 then
 		selfSay('Bomba ativada. Precisa de uma senha para desativar a bomba.60 segundos. NAO CORRA')
 		focus = cid
 		talk_start = os.clock()
 	end

 	if string.find(msg, '(%a*)123321(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
 		selfSay('A Bomba foi desativada')
 		focus = 0
 		talk_start = 0
 	end
 end


 function onCreatureChangeOutfit(creature)

 end


 function onThink()
 	if (os.clock() - talk_start) > 30 then
 		if focus > 0 then
 			selfSay('exevo gran mas vis')
 			selfSay('orshabaal_deathstar')
 			selfSay('Powwwwwwwww!!!!!!!')
 		end
 			focus = 0
 	end
	if focus ~= 0 then
		if getDistanceToCreature(focus) > 2 then
			selfSay('exevo gran mas vis')
 			selfSay('orshabaal_deathstar')
			selfSay('Naum corra de mim!')
			focus = 0
		end
	end
 end

