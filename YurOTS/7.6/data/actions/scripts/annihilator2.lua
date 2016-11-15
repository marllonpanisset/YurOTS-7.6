function onUse(cid, item, frompos, item2, topos)
	npos  = {x=338, y=219, z=12}
	npos2 = {x=339, y=219, z=12}
	npos3 = {x=340, y=219, z=12}
	npos4 = {x=341, y=219, z=12}

	newnpos  = {x=353, y=228, z=12}
	newnpos2 = {x=354, y=228, z=12}
	newnpos3 = {x=355, y=228, z=12}
	newnpos4 = {x=356, y=228, z=12}

	if item.itemid == 1946 then
		doTeleportThing(cid,newnpos)
		doTeleportThing(cid,newnpos2)
		doTeleportThing(cid,newnpos3)
		doTeleportThing(cid,newnpos4)
		doTransformItem(item.uid,1945)
	elseif item.itemid == 1945 then
		doTeleportThing(cid,newnpos)
		doTeleportThing(cid,newnpos2)
		doTeleportThing(cid,newnpos3)
		doTeleportThing(cid,newnpos4)
		doTransformItem(item.uid,1946)
	else
		return 0
	end
	
	return 1
end