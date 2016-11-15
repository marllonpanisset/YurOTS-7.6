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
  		selfSay('Hello, ' .. creatureGetName(cid) .. '! I sell colored backpacks, each cost 20gps.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'brown backpack') then
			buy(cid,1988,1,20)
		elseif msgcontains(msg, 'tiquanda backpack') then
			buy(cid,3940,1,20)
		elseif msgcontains(msg, 'green backpack') then
			buy(cid,1998,1,20)
		elseif msgcontains(msg, 'light backpack') then
			buy(cid,1999,1,20)
		elseif msgcontains(msg, 'red backpack') then
			buy(cid,2000,1,20)
		elseif msgcontains(msg, 'purple backpack') then
			buy(cid,2001,1,20)
		elseif msgcontains(msg, 'blue backpack') then
			buy(cid,2002,1,20)
		elseif msgcontains(msg, 'gray backpack') then
			buy(cid,2003,1,20)
		elseif msgcontains(msg, 'yellow backpack') then
			buy(cid,2004,1,20)

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
