function onUse(cid, item, frompos, item2, topos)
if item.itemid >= 2704 then
doTransformItem(item.uid,2705)
doPlayerAddItem(cid,2674,10)



end
return 1
end
