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


function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(id, stackpos)
    if id == focus then
         focus = 0
         selfSay("Farwell, my friend.")
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
selfSay('Oh, what.. could it be.. Hello, ' .. creatureGetName(cid) .. '!')
focus = cid
talk_start = os.clock()
end

if msgcontains(msg, 'hello') and focus == 0 and getDistanceToCreature(cid) < 3 then
selfSay('Oh, what.. could it be.. Hello, ' .. creatureGetName(cid) .. '!')
focus = cid
talk_start = os.clock()
end


if msgcontains(msg, 'info') and focus == cid then
 selfSay('We once ruled the cult of the red dragons but it came to the day when the dragons striked back.. that black day..')
talk_start = os.clock()
end

if msgcontains(msg, 'black day') and focus == cid then
 selfSay('It was winter, everything was as usual when suddenly the sky darkened and hundreds of those winged, firebreathing beasts attacked our beautiful castle.')
talk_start = os.clock()
end


if msgcontains(msg, 'castle') and focus == cid then
 selfSay('This was once a proud castle but now all that is left is death and destruction. I managed to save myself into this chamber while my brave knights faught the dragons..')
talk_start = os.clock()
end

if msgcontains(msg, 'knights') and focus == cid then
 selfSay('The knights that were under my command were known as the elite among all warriors. But even they couldnt stand a chance. I wonder if they atleast managed to trap The Red Dragon...')
talk_start = os.clock()
end

if msgcontains(msg, 'the red dragon') and focus == cid then
 selfSay('The Red Dragon is the leader of the dragon cult. He is the most dreaded and dangerous beast Ive ever seen. He has no mercy, no regret. Our plan was to trap him in a sealed chamber.')
talk_start = os.clock()
end

if msgcontains(msg, 'sealed chamber') and focus == cid then
 selfSay('I had to run away so I dont know if my warriors were able to trap him. You can find the entrance to the chamber in the kings room. To enter it you will need the dragontamer horn.')
talk_start = os.clock()
end

end


function onCreatureChangeOutfit(creature)

end


function onThink() 

if (os.clock() - talk_start) > 40 then
 if focus > 0 then
 selfSay('Farewell, my friend.')
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
