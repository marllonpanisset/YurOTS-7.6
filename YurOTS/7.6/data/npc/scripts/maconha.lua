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
        selfSay('vai vazando...')
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
  selfSay('Aí ' .. creatureGetName(cid) .. ', tô com uns baguio aqui no barril, o material é 3 pau e o tapete é 2.')
  focus = cid
  talk_start = os.clock()

  elseif ((string.find(msg, '(%a*)ae(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
  selfSay('Aí ' .. creatureGetName(cid) .. ', tô com uns baguio aqui no barril, o material é 3 pau e o tapete é 2.')
  focus = cid
  talk_start = os.clock()

 elseif string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
  selfSay('Aí, ' .. creatureGetName(cid) .. ', fica de boa aí que o outro maluco ta na parada.')

  elseif string.find(msg, '(%a*)ae(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
  selfSay('Aí, ' .. creatureGetName(cid) .. ', fica de boa aí que o outro maluco ta na parada.')

 elseif msgcontains(msg, 'material') and focus == cid then
  buy(cid,3541,1,3000)
  talk_start = os.clock()
  
  elseif msgcontains(msg, 'tapete') and focus == cid then
  buy(cid,2773,1,2000)
  talk_start = os.clock()

 elseif string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
  selfSay('fica de boa que no próximo tur tem bastante...' .. creatureGetName(cid) .. '...')
  focus = 0
  talk_start = 0
  
  elseif string.find(msg, '(%a*)flw(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
  selfSay('fica de boa que no próximo tur tem bastante...' .. creatureGetName(cid) .. '...')
  focus = 0
  talk_start = 0
 
  end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
 if (os.clock() - talk_start) > 30 then
  if focus > 0 then
   selfSay('Kadê o outro maluco?')
  end
   focus = 0
 end