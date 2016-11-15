function onUse(cid, item, frompos, item2, topos)
gatepos = {x=136, y=100, z=12, stackpos=1}
getgate = getThingfromPos(gatepos)

if item.uid == 3002 and item.itemid == 2711 and getgate.itemid == 1822 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 3002 and item.itemid == 2712 and getgate.itemid == 0 then
doCreateItem(1822,1,gatepos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Desculpe, não é possivel.")
end
return 1
end