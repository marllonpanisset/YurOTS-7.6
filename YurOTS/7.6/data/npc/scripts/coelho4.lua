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
selfSay('Feliz Páscoa!')
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
selfSay('Oi ' .. creatureGetName(cid) .. '! Vc é bem esperto, mais axo que não vai passar nesse. O próximo coelho esta aonde os homenzinhos verdes habitam.')
focus = cid
talk_start = os.clock()
end

if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
selfSay('Ops, ' .. creatureGetName(cid) .. '! Espera só um Min.')
end

if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
selfSay('Até mais, ' .. creatureGetName(cid) .. '!')
focus = 0
talk_start = 0
end
end


function onCreatureChangeOutfit(creature)
end


function onThink()
if (os.clock() - talk_start) > 30 then
if focus > 0 then
selfSay('Feliz Páscoa!')
end
focus = 0
end
if focus ~= 0 then
if getDistanceToCreature(focus) > 3 then
selfSay('Feliz Páscoa!')
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
rand = math.random(1,6)
if rand == 1 then
item = 2969
elseif rand == 2 then
item = 2973
elseif rand == 3 then
item = 3363
elseif rand == 4 then
item = 3520
elseif rand == 5 then
item = 2930
else
item = 3524
end
end

if focus == 0 then
randsay = math.random(1,75)
if randsay == 1 then
selfSay('Feliz Páscoa')
end
if randsay == 2 then
selfSay('Feliz Páscoa')
end
end
end