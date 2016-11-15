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
selfSay('Feliz Dia das Bruxas!')
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
selfSay('Feliz Dia das Bruxas ' .. creatureGetName(cid) .. '!')
focus = cid
talk_start = os.clock()
end

if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
selfSay('Desculpe, ' .. creatureGetName(cid) .. '! Espere um minuto.')
end

if string.find(msg, '(%a*)fantasia(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
present = getPlayerStorageValue(cid,1600)
if present == -1 then
buy(cid,item,1,0)
setPlayerStorageValue(cid,1600,1)
end

if present == 1 then
selfSay('Desculpe, voce ja ganhou a sua fantasia.')
end
end

if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
selfSay('Ate breve, ' .. creatureGetName(cid) .. '!')
focus = 0
talk_start = 0
end
end


function onCreatureChangeOutfit(creature)
end


function onThink()
if (os.clock() - talk_start) > 30 then
if focus > 0 then
selfSay('Beware, beware the halloween hare...')
end
focus = 0
end
if focus ~= 0 then
if getDistanceToCreature(focus) > 3 then
selfSay('Beware, beware the halloween hare...')
focus = 0
end
end
if focus == 0 then
cx, cy, cz = selfGetPosition()
randmove = math.random(1,25)
if randmove == 1 then
nx = cx + 1
end
if randmove == 2 then
nx = cx - 1
end
if randmove == 3 then
ny = cy + 1
end
if randmove == 4 then
ny = cy - 1
end
if randmove >= 5 then
nx = cx
ny = cy
end
moveToPosition(nx, ny, cz)
--summons = 30
--summons2 = 30
end

if focus > 0 then
rand = math.random(1,4)
if rand == 1 then
item = 2323
elseif rand == 2 then
item = 2324
elseif rand == 3 then
item = 3954
elseif rand == 4 then
item = 2096
end
end



if focus > 0 then
rand = math.random(1,4)
if rand == 1 then
item = 2323
elseif rand == 2 then
item = 2324
elseif rand == 3 then
item = 3954
elseif rand == 4 then
item = 2096
end
end
end