-- Respawn position set
ox = 17
oy = 212
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
 selfSay('Greetings, ' .. creatureGetName(cid) .. '.')
focus = cid
talk_start = os.clock()
end

if msgcontains(msg, 'spells') and focus == cid then
 selfSay('I have spells in magic levels: 0, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14 and 20')
talk_start = os.clock()
end


if msgcontains(msg, 'offer') and focus == cid then
 selfSay('Im sell spells for druid. ')
talk_start = os.clock()
end


if msgcontains(msg, '0') and focus == cid then
 selfSay('For magic level 0 i have create food and light healing.')
talk_start = os.clock()
end

if msgcontains(msg, '2') and focus == cid then
 selfSay('For magic level 2 i have Intense Healing and Force Strike.')
talk_start = os.clock()
end

if msgcontains(msg, '3') and focus == cid then
 selfSay('For magic level 3 i have Heavy Magic Missile, Flame Strike, EnergyStrike and Firefield.')
talk_start = os.clock()
end

if msgcontains(msg, '4') and focus == cid then
 selfSay('For magic level 4 i have Normal Haste and Magic Shield.')
talk_start = os.clock()
end

if msgcontains(msg, '5') and focus == cid then
 selfSay('For magic level 5 i have EnergyField.')
talk_start = os.clock()
end

if msgcontains(msg, '7') and focus == cid then
 selfSay('For magic level 7 i have FireWave.')
talk_start = os.clock()
end

if msgcontains(msg, '8') and focus == cid then
 selfSay('For magic level 8 i have Ultimate Healing and Strong Haste.')
talk_start = os.clock()
end

if msgcontains(msg, '9') and focus == cid then
 selfSay('For magic level 9 i have Great Fireball and FireBomb.')
talk_start = os.clock()
end

if msgcontains(msg, '10') and focus == cid then
 selfSay('For magic level 10 i have Creature Illusion and Normal Energy Beam..')
talk_start = os.clock()
end

if msgcontains(msg, '11') and focus == cid then
 selfSay('For magic level 11 i have uh rune.')
talk_start = os.clock()
end

if msgcontains(msg, '12') and focus == cid then
 selfSay('For magic level 12 i have Explosion.')
talk_start = os.clock()
end

if msgcontains(msg, '13') and focus == cid then
 selfSay('For magic level 13 i have Soulfire.')
talk_start = os.clock()
end

if msgcontains(msg, '14') and focus == cid then
 selfSay('For magic level 14 i have heal friend and poison storm.')
talk_start = os.clock()
end

if msgcontains(msg, '15') and focus == cid then
 selfSay('For magic level 20 i have mass healing.')
talk_start = os.clock()
end

if msgcontains(msg, 'light healing') and focus == cid then
 sellSpell(cid,"exura",100,2,0)
talk_start = os.clock()
end

if msgcontains(msg, 'create food') and focus == cid then
 sellSpell(cid,"exevo pan",100,2,0)
talk_start = os.clock()
end


if msgcontains(msg, 'normal haste') and focus == cid then
 sellSpell(cid,"utani hur",600,2,4)
talk_start = os.clock()
end


if msgcontains(msg, 'ultimate healing') and focus == cid then
 sellSpell(cid,"exura vita",1000,2,8)
talk_start = os.clock()
end

if msgcontains(msg, 'intense healing') and focus == cid then
 sellSpell(cid,"exura gran",350,2,2)
talk_start = os.clock()
end

if msgcontains(msg, 'heavy magic missile') and focus == cid then
 sellSpell(cid,"adori gran",600,2,3)
talk_start = os.clock()
end

if msgcontains(msg, 'magic shield') and focus == cid then
 sellSpell(cid,"utamo vita",450,2,4)
talk_start = os.clock()
end


if msgcontains(msg, 'energystrike') and focus == cid then
 sellSpell(cid,"exori vis",800,2,3)
talk_start = os.clock()
end

if msgcontains(msg, 'flame strike') and focus == cid then
 sellSpell(cid,"exori flam",800,2,3)
end

if msgcontains(msg, 'firefield') and focus == cid then
 sellSpell(cid,"adevo grav flam",500,2,3)
talk_start = os.clock()
end

if msgcontains(msg, 'energyfield') and focus == cid then
 sellSpell(cid,"adevo grav vis",700,2,5)
talk_start = os.clock()
end

if msgcontains(msg, 'firewave') and focus == cid then
 sellSpell(cid,"exevo flam hur",850,2,7)
talk_start = os.clock()
end

if msgcontains(msg, 'strong haste') and focus == cid then
 sellSpell(cid,"utani gran hur",1300,2,8)
talk_start = os.clock()
end

if msgcontains(msg, 'great fireball') and focus == cid then
 sellSpell(cid,"adori gran flam",1200,2,9)
talk_start = os.clock()
end

if msgcontains(msg, 'firebomb') and focus == cid then
 sellSpell(cid,"adevo mas flam",1500,2,9)
talk_start = os.clock()
end

if msgcontains(msg, 'force strike') and focus == cid then
 sellSpell(cid,"exori mort",600,2,2)
talk_start = os.clock()
end

if msgcontains(msg, 'creature illusion') and focus == cid then
 sellSpell(cid,"utevo res ina",1000,2,10)
talk_start = os.clock()
end

if msgcontains(msg, 'normal energy beam') and focus == cid then
 sellSpell(cid,"exevo vis lux",1000,2,10)
talk_start = os.clock()
end

if msgcontains(msg, 'uh rune') and focus == cid then
 sellSpell(cid,"adura vita",1600,2,11)
talk_start = os.clock()
end

if msgcontains(msg, 'explosion') and focus == cid then
 sellSpell(cid,"adevo mas hur",1800,2,12)
talk_start = os.clock()
end

if msgcontains(msg, 'soulfire') and focus == cid then
 sellSpell(cid,"adevo res flam",1800,2,13)
talk_start = os.clock()
end


if msgcontains(msg, 'heal friend') and focus == cid then
 sellSpell(cid,"exura sio",1800,2,14)
talk_start = os.clock()
end

if msgcontains(msg, 'poison storm') and focus == cid then
 sellSpell(cid,"exevo gran mas pox",2100,2,14)
talk_start = os.clock()
end

if msgcontains(msg, 'mass healing') and focus == cid then
 sellSpell(cid,"exura gran mas res",8000,2,20)
talk_start = os.clock()
end

if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
 selfSay('Good bye. Traveller.')
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
