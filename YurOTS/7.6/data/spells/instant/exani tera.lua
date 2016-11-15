function onSay(cid, item, frompos, item2, topos)
	npos = {x=topos.x, y=topos.y, z=topos.z}
	if item2.itemid == 0 then
		return 0
	end	

	if item2.itemid == 384 then
		npos.y = npos.y + 1
		npos.z = npos.z - 1
		doTeleportThing(cid,npos)
	else
		return 0
	end

	return 1
end