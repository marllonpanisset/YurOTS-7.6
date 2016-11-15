function moveRandom(ox,oy,max)
maxx = ox + max
maxy = oy + max
minx = ox - max
miny = oy - max
cx, cy, cz = selfGetPosition()
randmove = math.random(1,50)
if randmove == 1 then
nx = cx + 1
ny = cy
end
if randmove == 2 then
nx = cx - 1
ny = cy
end
if randmove == 3 then
ny = cy + 1
nx = cx
end
if randmove == 4 then
ny = cy - 1
nx = cx
end
if randmove >= 5 then
nx = cx
ny = cy
end
if((nx < maxx) and (ny < maxy) and (nx > minx) and (ny > miny)) then
moveToPosition(nx, ny, cz)
end
end
 -- get the distance to a creature
 function getDistanceToCreature(id)
 	if id == 0 or id == nil then
 		selfGotoIdle()
 	end
 	cx, cy, cz = creatureGetPosition(id)
 	if cx == nil then
 		return nil
 	end
 	sx, sy, sz = selfGetPosition()
 	return math.max(math.abs(sx-cx), math.abs(sy-cy))	
 end
 
 -- do one step to reach position
 function moveToPosition(x,y,z)
 	selfMoveTo(x, y, z)
 end
 
 -- do one step to reach creature
 function moveToCreature(id)
 	if id == 0 or id == nil then
 		selfGotoIdle()
 	end
 	tx,ty,tz=creatureGetPosition(id)
 	if tx == nil then
 		selfGotoIdle()
 	else
 	   moveToPosition(tx, ty, tz)
    end
 end
 
 function selfGotoIdle()
 		following = false
 		attacking = false
 		selfAttackCreature(0)
 		target = 0
 end
