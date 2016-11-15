-- Respawn position set
ox = 157
oy = 298
oz = 7
-- sven, the bewitched bunny
-- it's a sample script, i dont know lua well enough to
-- make some fancy code
-- the good thing is, that this scripts can easily be developed
-- seperately from the main programm
-- perhaps we should write some docu

-- the id of the creature we are attacking, following, etc.

summons = 0
summons2 = 0
focus = 0
talk_start = 0
target = 0 
following = false 
attacking = false

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

if msgcontains(msg, 'spells') and focus == cid then
 selfSay('I have spells in magic levels: 0, 2, 3, 4, 5, 6, 8, 10 and 14.')
talk_start = os.clock()
end

if msgcontains(msg, 'offer') and focus == cid then
 selfSay('I can give spells.')
talk_start = os.clock()
end


if msgcontains(msg, '0') and focus == cid then
 selfSay('For magic level 0 i have Create Food and light healing.')
talk_start = os.clock()
end


if msgcontains(msg, '2') and focus == cid then
 selfSay('For magic level 2 i have Intense Healing and Conjure Arrow.')
talk_start = os.clock()
end

if msgcontains(msg, '3') and focus == cid then
 selfSay('For magic level 3 i have Heavy Magic Missile.')
talk_start = os.clock()
end

if msgcontains(msg, '4') and focus == cid then
 selfSay('For magic level 4 i have Haste and Magic Shield.')
talk_start = os.clock()
end

if msgcontains(msg, '5') and focus == cid then
 selfSay('For magic level 5 i have Poisoned Arrow.')
talk_start = os.clock()
end

if msgcontains(msg, '8') and focus == cid then
 selfSay('For magic level 8 i have Ultimate Healing.')
talk_start = os.clock()
end

if msgcontains(msg, '6') and focus == cid then
 selfSay('For magic level 6 i have Conjure Bolt.')
talk_start = os.clock()
end

if msgcontains(msg, '10') and focus == cid then
 selfSay('For magic level 10 i have Explosive Arrow.')
talk_start = os.clock()
end

if msgcontains(msg, '14') and focus == cid then
 selfSay('For magic level 14 i have Power Bolt.')
talk_start = os.clock()
end

if msgcontains(msg, 'light healing') and focus == cid then
 sellSpell(cid,"exura",100,3,0)
talk_start = os.clock()
end

if msgcontains(msg, 'haste') and focus == cid then
 sellSpell(cid,"utani hur",600,3,4)
talk_start = os.clock()
end

if msgcontains(msg, 'ultimate healing') and focus == cid then
 sellSpell(cid,"exura vita",1000,3,8)
talk_start = os.clock()
end

if msgcontains(msg, 'intense healing') and focus == cid then
 sellSpell(cid,"exura gran",350,3,2)
talk_start = os.clock()
end

if msgcontains(msg, 'conjure arrow') and focus == cid then
 sellSpell(cid,"exevo con",450,3,2)
talk_start = os.clock()
end

if msgcontains(msg, 'heavy magic missile') and focus == cid then
 sellSpell(cid,"adori gran",600,3,3)
talk_start = os.clock()
end

if msgcontains(msg, 'magic shield') and focus == cid then
 sellSpell(cid,"utamo vita",450,3,4)
talk_start = os.clock()
end

if msgcontains(msg, 'poisoned arrow') and focus == cid then
 sellSpell(cid,"exevo con pox",700,3,5)
talk_start = os.clock()
end

if msgcontains(msg, 'conjure bolt') and focus == cid then
 sellSpell(cid,"exevo con mort",750,3,6)
talk_start = os.clock()
end

if msgcontains(msg, 'explosive arrow') and focus == cid then
 sellSpell(cid,"exevo con flam",1000,3,10)
talk_start = os.clock()
end

if msgcontains(msg, 'power bolt') and focus == cid then
 sellSpell(cid,"exevo con vis",2000,3,14)
talk_start = os.clock()
end

if msgcontains(msg, 'create food') and focus == cid then
 sellSpell(cid,"exevo pan",150,3,0)
talk_start = os.clock()
end

if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
 selfSay('Good luck on your adventures.')
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


--nothing special has happened
--but perhaps we want to walk around a bit?
if focus == 0 then
 cx, cy, cz = selfGetPosition()
 randmove = math.random(1,50)
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
end
