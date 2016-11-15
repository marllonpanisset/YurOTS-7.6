-- Respawn position set
ox = 18
oy = 105
oz = 6
-- sven, the bewitched bunny
-- it's a sample script, i dont know lua well enough to
-- make some fancy code
-- the good thing is, that this scripts can easily be developed
-- seperately from the main programm
-- perhaps we should write some docu
-- the id of the creature we are attacking, following, etc.

focus = 0
talk_start = 0
target = 0 
following = false 
attacking = false
surv = false
inf = false
dund = false 
jungle = false
forest = false


function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(id, stackpos)
    if id == focus then
         focus = 0
	  surv = false
 	  inf = false
	  dund = false
	  jungle = false
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
if msgcontains(msg, 'hi') and focus == 0 and getDistanceToCreature(cid) < 3 then
selfSay('Aye, ' .. creatureGetName(cid) .. ', ye ol landlubber, yarr!')
focus = cid
talk_start = os.clock()
end

if msgcontains(msg, 'hello') and focus == 0 and getDistanceToCreature(cid) < 3 then
selfSay('Aye, ' .. creatureGetName(cid) .. ', ye ol landlubber, yarr!')
focus = cid
talk_start = os.clock()
end

if msgcontains(msg, 'passage') and focus == cid then
selfSay('I can take ye to Survival Island, Infiresla, Dundert, the Forest or the Jungle.')
talk_start = os.clock()
end


if msgcontains(msg, 'survival') and focus == cid then
selfSay('Aye, ' .. creatureGetName(cid) .. '. You wanta go to Survival Island?')
talk_start = os.clock()
surv = true
end

if msgcontains(msg, 'infiresla') and focus == cid then
selfSay('Aye, ' .. creatureGetName(cid) .. '. You wanta go to Infiresla?')
talk_start = os.clock()
inf = true
end

if msgcontains(msg, 'jungle') and focus == cid then
selfSay('Aye, ' .. creatureGetName(cid) .. '. You wanta go to the Jungle?')
talk_start = os.clock()
jungle = true
end

if msgcontains(msg, 'dundert') and focus == cid then
selfSay('Aye, ' .. creatureGetName(cid) .. '. You wanta go to Dundert?')
talk_start = os.clock()
dund = true
end

if msgcontains(msg, 'forest') and focus == cid then
selfSay('Aye, ' .. creatureGetName(cid) .. '. You wanta go to the Forest?')
talk_start = os.clock()
forest = true
end

if ((string.find(msg, '(%a*)yes(%a*)')) and (focus == cid)) and surv == true then
selfSay('/send ' .. creatureGetName(cid) .. ', 565 502 7')
focus = 0
survival = false
inf = false
dund = false
jungle = false
forest = false
talk_start = 0
end

if ((string.find(msg, '(%a*)yes(%a*)')) and (focus == cid)) and inf == true then
selfSay('/send ' .. creatureGetName(cid) .. ', 510 666 7')
focus = 0
survival = false
inf = false
dund = false
forest = false
jungle = false
talk_start = 0
end

if ((string.find(msg, '(%a*)yes(%a*)')) and (focus == cid)) and jungle == true then
selfSay('/send ' .. creatureGetName(cid) .. ', 396 578 7')
focus = 0
survival = false
inf = false
dund = false
jungle = false
forest = false
talk_start = 0
end

if ((string.find(msg, '(%a*)yes(%a*)')) and (focus == cid)) and dund == true then
selfSay('/send ' .. creatureGetName(cid) .. ', 499 594 7')
focus = 0
survival = false
inf = false
dund = false
jungle = false
forest = false
talk_start = 0
end

if ((string.find(msg, '(%a*)yes(%a*)')) and (focus == cid)) and forest == true then
selfSay('/send ' .. creatureGetName(cid) .. ', 302 545 7')
focus = 0
survival = false
inf = false
dund = false
jungle = false
forest = false
talk_start = 0
end

if msgcontains(msg, 'food') and focus == cid then
 selfSay('I have Meats and Hams.')
talk_start = os.clock()
end

if msgcontains(msg, 'meat') and focus == cid then
sell(cid,2969,3515,4,1,"Here you are.","You need 4 gold.")
talk_start = os.clock()
end

if msgcontains(msg, 'ham') and focus == cid then
sell(cid,2969,3520,8,1,"Here you are.","You need 8 gold.")
talk_start = os.clock()
end


if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
 selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
 focus = 0
 surv = false
 inf = false
 dund = false
 jungle = false
talk_start = 0
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
