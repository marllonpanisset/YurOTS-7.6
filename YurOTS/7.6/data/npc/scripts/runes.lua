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

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Eae ' .. creatureGetName(cid) .. '! Eu vendo Runes, Wands and Rods.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Desculpe, ' .. creatureGetName(cid) .. '! Eu falo com vc em 1 min.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'runes') then
			selfSay('Eu vendo HMMs (50gps), UHs (100gps), GFBs (80gps), Explosions (80gps), SDs (100gps) e Blank Runes (5gps).Só vendemos de 100x.')		elseif msgcontains(msg, 'wands') then
			selfSay('I sell Wands of Inferno (15k), Plague (5k), Cosmic Energy (10k), Vortex (500gp) and Dragonbreath (1k).')
		elseif msgcontains(msg, 'rods') then
			selfSay('I sell Quagmire (10k), Snakebite (500gp), Tempest (15k), Volcanic (5k) and Moonlight Rods (1k).')

		elseif msgcontains(msg, 'inferno') then
			buy(cid,2187,1,15000)
		elseif msgcontains(msg, 'plague') then
			buy(cid,2188,1,5000)
		elseif msgcontains(msg, 'cosmic energy') then
			buy(cid,2189,1,10000)
		elseif msgcontains(msg, 'vortex') then
			buy(cid,2190,1,500)
		elseif msgcontains(msg, 'dragonbreath') then
			buy(cid,2191,1,1000)

		elseif msgcontains(msg, 'quagmire') then
			buy(cid,2181,1,10000)
		elseif msgcontains(msg, 'snakebite') then
			buy(cid,2182,1,500)
		elseif msgcontains(msg, 'tempest') then
			buy(cid,2183,1,15000)
		elseif msgcontains(msg, 'volcanic') then
			buy(cid,2185,1,5000)
		elseif msgcontains(msg, 'moonlight') then
			buy(cid,2186,1,1000)

		elseif msgcontains(msg, '100 hmm') then
			buy(cid,2311,100,50)
		elseif msgcontains(msg, 'hmm') then
			buy(cid,2311,100,50)
		elseif msgcontains(msg, '100 uh') then
			buy(cid,2273,100,100)		
		elseif msgcontains(msg, 'uh') then
			buy(cid,2273,100,100)

		elseif msgcontains(msg, '100 gfb') then
			buy(cid,2304,100,80)		
		elseif msgcontains(msg, 'gfb') then
			buy(cid,2304,100,80)
		elseif msgcontains(msg, '100 explosion') then
			buy(cid,2313,100,80)		
		elseif msgcontains(msg, 'explosion') then
			buy(cid,2313,100,80)
		elseif msgcontains(msg, '100 sd') then
			buy(cid,2268,100,100)		
		elseif msgcontains(msg, 'sd') then
			buy(cid,2268,100,100)

		elseif msgcontains(msg, 'blank') then
			buy(cid,2260,1,5)

		elseif string.find(msg, '(%a*)bye(%a*)') and getDistanceToCreature(cid) < 4 then
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
