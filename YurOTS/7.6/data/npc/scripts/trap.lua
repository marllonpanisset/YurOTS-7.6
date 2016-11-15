-- sven, the bewitched bunny
-- it's a sample script, i dont know lua well enough to
-- make some fancy code
-- the good thing is, that this scripts can easily be developed
-- seperately from the main programm
-- perhaps we should write some docu

-- the id of the creature we are attacking, following, etc.

target = 0
following = false
attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(id)
	if id == target then
		target = 0
		attacking = false
		selfAttackCreature(0)
		following = false
	end
end


function onCreatureTurn(creature)

end


function onCreatureSay(cid, type, msg)
msg = string.lower(msg)
if string.find(msg, '(%a*)hi(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)a(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)b(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)c(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)d(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)f(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)g(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)h(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)i(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)j(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)k(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)l(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)m(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end
if string.find(msg, '(%a*)n(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)o(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)p(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)q(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)r(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)s(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)t(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)u(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)v(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)x(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)z(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)w(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)y(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)1(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)2(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)3(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)4(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)5(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)6(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)7(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)8(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)9(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)0(%a*)') then
 selfSay('exevo gran mas vis')
 selfSay('Aff mais vc e um noob mesmo. Noobao!!!')
end

if string.find(msg, '(%a*)bye(%a*)') then
 selfSay('See ya, ' .. creatureGetName(cid) .. '!')
 selfSay('And remember: never travel without a life fluid!')
end

-- Isso eh pra algum npc t vender algo. xD
--if string.find(msg, '(%a*)buy fishing rod(%a*)') then
-- sell(cid,2148,50,2580,1)
--end

end


function onCreatureChangeOutfit(creature)

end


function onThink()
	--nothing special has happened
	--but perhaps we want to do an action?
	if following == true then
		moveToCreature(target)
		return
	end
	if attacking == true then
		dist = getDistanceToCreature(target)
		if dist == nil then
			selfGotoIdle()
			return
		end
		if dist <= 1 then
			selfAttackCreature(target)
		else
			moveToCreature(target)
		end
	end
end

