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
         selfSay('HAHAHA SAI DAKI MANO!')
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
   selfSay('Oi sr. ' .. creatureGetName(cid) .. ' Desviei umas coisas do governo sabe..mais agente tá precisando de mais dinheiro pra cubri o Lula, então to vendendo 1 golden helmet e 1 golgen boots por 1kk( 1milhão de gps) bom, e ainda vo te dá de graça 2 magic plate armor e 1 demon legs vai kerer?')
   focus = cid
   talk_start = os.clock()
elseif string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
   selfSay('Perae, ' .. creatureGetName(cid) .. '! I So 1 só!')  elseif focus == cid then
  talk_start = os.clock()

  if msgcontains(msg, 'sim') then
    sell(cid,2981,10,1)
   end
  end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
  if (os.clock() - talk_start) > 30 then
   if focus > 0 then
    selfSay('Próximo!')
   end
    focus = 0
  end
if focus ~= 0 then
  if getDistanceToCreature(focus) > 5 then
   selfSay('VAZAAAAAAAAA MALUCOOO!!')
   focus = 0
  end
end
end



