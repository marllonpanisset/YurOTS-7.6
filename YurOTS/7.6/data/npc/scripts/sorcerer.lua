-- Respawn position set
ox = 25
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


if msgcontains(msg, 'offer') and focus == cid then
 selfSay('Im selling Sorcerer spells.')
talk_start = os.clock()
end


if msgcontains(msg, 'spells') and focus == cid then
 selfSay('I have spells in magic levels: 0, 2, 3, 4, 5, 7, 8, 9, 10, 12, 13, 14, 18, 20, 15 and 40.')
talk_start = os.clock()
end

if msgcontains(msg, '0') and focus == cid then
 selfSay('For magic level 0 i have light healing.')
talk_start = os.clock()
end

if msgcontains(msg, '2') and focus == cid then
 selfSay('For magic level 2 i have intense healing and force strike.')
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


if msgcontains(msg, '12') and focus == cid then
 selfSay('For magic level 12 i have Explosion.')
talk_start = os.clock()
end

if msgcontains(msg, '13') and focus == cid then
 selfSay('For magic level 13 i have Soulfire.')
talk_start = os.clock()
end

if msgcontains(msg, '14') and focus == cid then
 selfSay('For magic level 14 i have Great Energy Beam and Magic Wall.')
talk_start = os.clock()
end

if msgcontains(msg, '18') and focus == cid then
 selfSay('For magic level 18 i have EnergyBomb.')
talk_start = os.clock()
end

if msgcontains(msg, '20') and focus == cid then
 selfSay('For magic level 20 i have EnergyWave.')
talk_start = os.clock()
end

if msgcontains(msg, '25') and focus == cid then
 selfSay('For magic level 25 i have Sudden Death.')
talk_start = os.clock()
end

if msgcontains(msg, '40') and focus == cid then
 selfSay('For magic level 40 i have UE.')
talk_start = os.clock()
end

if msgcontains(msg, 'light healing') and focus == cid then
 sellSpell(cid,"exura",100,1,0)
talk_start = os.clock()
end

if msgcontains(msg, 'normal haste') and focus == cid then
 sellSpell(cid,"utani hur",600,1,4)
talk_start = os.clock()
end


if msgcontains(msg, 'ultimate healing') and focus == cid then
 sellSpell(cid,"exura vita",1000,1,8)
talk_start = os.clock()
end

if msgcontains(msg, 'intense healing') and focus == cid then
 sellSpell(cid,"exura gran",350,1,2)
talk_start = os.clock()
end

if msgcontains(msg, 'heavy magic missile') and focus == cid then
 sellSpell(cid,"adori gran",600,1,3)
talk_start = os.clock()
end

if msgcontains(msg, 'magic shield') and focus == cid then
 sellSpell(cid,"utamo vita",450,1,4)
talk_start = os.clock()
end

if msgcontains(msg, 'force strike') and focus == cid then
 sellSpell(cid,"exori mort",600,1,2)
talk_start = os.clock()
end

if msgcontains(msg, 'energystrike') and focus == cid then
 sellSpell(cid,"exori vis",800,1,3)
talk_start = os.clock()
end

if msgcontains(msg, 'flame strike') and focus == cid then
 sellSpell(cid,"exori flam",800,1,3)
end

if msgcontains(msg, 'firefield') and focus == cid then
 sellSpell(cid,"adevo grav flam",500,1,3)
talk_start = os.clock()
end

if msgcontains(msg, 'energyfield') and focus == cid then
 sellSpell(cid,"adevo grav vis",700,1,5)
talk_start = os.clock()
end

if msgcontains(msg, 'firewave') and focus == cid then
 sellSpell(cid,"exevo flam hur",850,1,7)
talk_start = os.clock()
end

if msgcontains(msg, 'strong haste') and focus == cid then
 sellSpell(cid,"utani gran hur",1300,1,8)
talk_start = os.clock()
end

if msgcontains(msg, 'great fireball') and focus == cid then
 sellSpell(cid,"adori gran flam",1200,1,9)
talk_start = os.clock()
end

if msgcontains(msg, 'firebomb') and focus == cid then
 sellSpell(cid,"adevo mas flam",1500,1,9)
talk_start = os.clock()
end

if msgcontains(msg, 'creature illusion') and focus == cid then
 sellSpell(cid,"utevo res ina",1000,1,10)
talk_start = os.clock()
end

if msgcontains(msg, 'normal energy beam') and focus == cid then
 sellSpell(cid,"exevo vis lux",1000,1,10)
talk_start = os.clock()
end

if msgcontains(msg, 'explosion') and focus == cid then
 sellSpell(cid,"adevo mas hur",1800,1,12)
talk_start = os.clock()
end

if msgcontains(msg, 'soulfire') and focus == cid then
 sellSpell(cid,"adevo res flam",1800,1,13)
talk_start = os.clock()
end


if msgcontains(msg, 'great energy beam') and focus == cid then
 sellSpell(cid,"exevo gran vis lux",1800,1,14)
talk_start = os.clock()
end

if msgcontains(msg, 'magic wall') and focus == cid then
 sellSpell(cid,"adevo grav tera",2100,1,14)
talk_start = os.clock()
end

if msgcontains(msg, 'energybomb') and focus == cid then
 sellSpell(cid,"adevo mas vis",2300,1,18)
talk_start = os.clock()
end


if msgcontains(msg, 'energywave') and focus == cid then
 sellSpell(cid,"exevo mort hur",2500,1,20)
talk_start = os.clock()
end

if msgcontains(msg, 'sudden death') and focus == cid then
 sellSpell(cid,"adori vita vis",3000,1,25)
talk_start = os.clock()
end

if msgcontains(msg, 'ue') and focus == cid then
 sellSpell(cid,"exevo gran mas vis",8000,1,40)
talk_start = os.clock()
end

if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
 selfSay('Asha Tharazi.')
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
