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
         selfSay('Até logo!')
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
 		selfSay('Seja Bem Vindo ' .. creatureGetName(cid) .. '! estou aki para ajudar vc, para ir ao dp digite: (dp) para treinar digite: (treinar) > Os GMs do server são os GM Trevor, GM AngElOs. Estamos ainda terminando de traduzir os NPC....^^.')
 		focus = cid
 		talk_start = os.clock()
 	end	if string.find(msg, '(%a*)nk(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
 		selfSay('Tipo, ' .. creatureGetName(cid) .. '! Tem So Um Admin Que Eh o GM Trevor.')
 	        focus = cid
 		talk_start = os.clock()
 	
       end
 	if msgcontains(msg, 'dp') and focus == cid then
 		if pay(cid,0) then
			selfSay('Vamos lá!')
			selfSay('/send ' .. creatureGetName(cid) .. ', 160 54 8 ')
			focus = 0
			talk_start = 0
		else
			selfSay('Desculpe, vc não tem dinheiro.')
			talk_start = os.clock()
		end
 	end
	if msgcontains(msg, 'treinar') and focus == cid then
 		if pay(cid,0) then
			selfSay('Vamos lá!')
			selfSay('/send ' .. creatureGetName(cid) .. ', 160 48 4')
			focus = 0
			talk_start = 0
		else
			selfSay('Desculpe, vc não tem dinheiro.')
			talk_start = os.clock()
		end
 	end

 	if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
 		selfSay('Se Divirta MsN>alfalfa_32@hotmail.com, ' .. creatureGetName(cid) .. '!')
 		focus = 0
 		talk_start = 0
 	end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
 	if (os.clock() - talk_start) > 30 then
 		if focus > 0 then
 			selfSay('Próximo...')
 		end
 			focus = 0
 	end	if focus ~= 0 then
		if getDistanceToCreature(focus) > 5 then
			selfSay('Volte sempre.')
			focus = 0
		end
	end
end

