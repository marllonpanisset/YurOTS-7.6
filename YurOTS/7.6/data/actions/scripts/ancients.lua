function onUse(cid, item, frompos, item2, topos)

        --helmet of the ancients--
 	if item.itemid == 2337 then
 		doTransformItem(item.uid,2338)
 	elseif item.itemid == 2338 then
 		doTransformItem(item.uid,2335)
        elseif item.itemid == 2335 then
 		doTransformItem(item.uid,2341)
 	elseif item.itemid == 2341 then
 		doTransformItem(item.uid,2340)
 	elseif item.itemid == 2340 then
 		doTransformItem(item.uid,2339)
 	elseif item.itemid == 2339 then
 		doTransformItem(item.uid,2336)
 	elseif item.itemid == 2336 then
 		doTransformItem(item.uid,2342)
 	elseif item.itemid == 2342 then
 		doTransformItem(item.uid,2343)
        --end helmet of the ancients--


 	end
	return 1
     end