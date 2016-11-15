-- Respawn position set
ox = 5
oy = 236
oz = 7
summons = 0
summons2 = 0
focus = 0
talk_start = 0
target = 0 
following = false 
attacking = false 
-- sven, the bewitched bunny
-- it's a sample script, i dont know lua well enough to
-- make some fancy code
-- the good thing is, that this scripts can easily be developed
-- seperately from the main programm
-- perhaps we should write some docu

-- the id of the creature we are attacking, following, etc.


function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(id, stackpos)
    if id == focus then
         focus = 0
         selfSay("Goodbye, then.")
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
 selfSay('Hello, ' .. creatureGetName(cid) .. '')
 focus = cid
 talk_start = os.clock()
end


if msgcontains(msg, 'offer') and focus == cid then
 selfSay('I am here for sell knight spells.')
talk_start = os.clock()
end

if msgcontains(msg, 'spells') and focus == cid then
 selfSay('Im can give Light healing for 100 gold coins, Haste for 1500 gold coins and Berserk for 2500 gold coins.')
talk_start = os.clock()
end

if msgcontains(msg, 'light healing') and focus == cid then
 sellSpell(cid,"exura",100,4,0)
talk_start = os.clock()
end

if msgcontains(msg, 'haste') and focus == cid then
 sellSpell(cid,"utani hur",1500,4,4)
talk_start = os.clock()
end

if msgcontains(msg, 'berserk') and focus == cid then
 sellSpell(cid,"exori",2500,4,5)
talk_start = os.clock()
end


if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
 selfSay('Take care out of there.')
 focus = 0
talk_start = 0
end
end


function onCreatureChangeOutfit(creature)

end


function onThink() 
if summons == 1 then
		summons = summons * 1
	end
	if summons >= 1 then
		if summons == 2 then
			summons = 0
              selfSay('Next Client Please....')
              focus = 0		
end
		summons = summons - 1
	end

if summons2 == 1 then
		summons2 = summons2 * 180
	end
	if summons2 >= 1 then
		if summons2 == 2 then
			summons2 = 0
              selfSay('Next Client Please....')
              focus = 0		
end
		summons2 = summons2 - 1
	end
if (os.clock() - talk_start) > 40 then
 if focus > 0 then
 selfSay('Next Please...')
 end
focus = 0
end
end



