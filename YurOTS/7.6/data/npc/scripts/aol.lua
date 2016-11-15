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

  	if (msgcontains(msg, 'hi') and focus == 0) and getDistanceToCreature(cid) < 4 then
  		selfSay('Eae ' .. creatureGetName(cid) .. '! Eu vendo Scarfs (2k), AOLs (10k) e Starlight Amulet (50k).')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Desculpe, ' .. creatureGetName(cid) .. '! Falo com vc em 1 min.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'aol') then
			buy(cid,2173,1,10000)
		elseif msgcontains(msg, 'scarf') then
			buy(cid,2661,1,2000)
		elseif msgcontains(msg, 'starlight') then
			buy(cid,2138,1,50000)

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Até mais, ' .. creatureGetName(cid) .. '!')
			focus = 0
			talk_start = 0
		end
  	end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
  	if (os.clock() - talk_start) > 30 then
  		if focus > 0 then
  			selfSay('Próximo, por favor...')
  		end
 		focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Volte Sempre.')
 			focus = 0
 		end
 	end
end


function onCreatureChangeOutfit(creature)
end


