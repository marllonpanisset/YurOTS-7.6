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
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I sell Clubs (Skull Staffs and War Hammers), Swords (Bright Swords and Giant Swords) and Axes (Fire Axes and Dragon Lances), each 20k.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'skull staff') then
			buy(cid,2436,1,20000)
		elseif msgcontains(msg, 'war hammer') then
			buy(cid,2391,1,20000)
		elseif msgcontains(msg, 'bright sword') then
			buy(cid,2407,1,20000)
		elseif msgcontains(msg, 'giant sword') then
			buy(cid,2393,1,20000)
		elseif msgcontains(msg, 'fire axe') then
			buy(cid,2432,1,20000)
		elseif msgcontains(msg, 'dragon lance') then
			buy(cid,2414,1,20000)

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
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
