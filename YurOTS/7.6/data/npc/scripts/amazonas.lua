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
         selfSay('Entao Adeus.')
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

 	if ((string.find(msg, '(%a*)oi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 4 then
 		selfSay('Eae ' .. creatureGetName(cid) .. '! Eu posso fazer exame de você Ate a amazonas (50gps). Onde você quer ir?')
 		focus = cid
 		talk_start = os.clock()
 	end	if string.find(msg, '(%a*)oi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
 		selfSay('Desculpe, ' .. creatureGetName(cid) .. '! Eu falo-lhe em um minuto.')
 	end

 	if msgcontains(msg, 'amazonas') and focus == cid then
 		if pay(cid,50) then
			selfSay('Let\'s go!')
			selfSay('/send ' .. creatureGetName(cid) .. ', 192 129 7')
			focus = 0
			talk_start = 0
		else
			selfSay('Pesarosa, você don\'t tem bastante dinheiro.')
			talk_start = os.clock()
		end
 	end

 	if string.find(msg, '(%a*)Tchau(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
 		selfSay('Ate mais, ' .. creatureGetName(cid) .. '!')
 		focus = 0
 		talk_start = 0
 	end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
 	if (os.clock() - talk_start) > 30 then
 		if focus > 0 then
 			selfSay('Satisfaça Em seguida...')
 		end
 			focus = 0
 	end	if focus ~= 0 then
		if getDistanceToCreature(focus) > 5 then
			selfSay('Então Adeus.')
			focus = 0
		end
	end
end

