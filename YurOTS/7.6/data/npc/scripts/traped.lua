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
         selfSay('Flw!!')
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

 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 1 then
 		selfSay('Aew ' .. creatureGetName(cid) .. '! Si quize sai paga 10 k ... troxaum!!ok ?')
 		focus = cid
 		talk_start = os.clock()
 	end	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
 		selfSay('Dps flo ' .. creatureGetName(cid) .. '! To flandu com outro noob agora')
 	end

 	if msgcontains(msg, 'ok') and focus == cid then
 		if pay(cid,10000) then
			selfSay('To Riko')
			selfSay('/send ' .. creatureGetName(cid) .. ', 172 145 7')
			focus = 0
			talk_start = 0
		else
			selfSay('Ixi não tem dimdim ... como eh noob.. tah preso.')
			talk_start = os.clock()
		end
 	end
       

 	if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
 		selfSay('Flw, ' .. creatureGetName(cid) .. '!')
 		focus = 0
 		talk_start = 0
 	end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
 	if (os.clock() - talk_start) > 30 then
 		if focus > 0 then
 			selfSay('Proximo Noob...')
 		end
 			focus = 0
 	end	if focus ~= 0 then
		if getDistanceToCreature(focus) > 1 then
			selfSay('Flw!!')
			focus = 0
		end
	end
end

