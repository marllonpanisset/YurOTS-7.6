function onUse(cid, item, frompos, item2, topos)

if getPlayerName(item2.uid) == getPlayerName(cid) then


player1pos = {x=topos.x, y=topos.y, z=topos.z, stackpos=253}
player1 = getThingfromPos(player1pos)


if player1.itemid > 0 then
temple = getPlayerMasterPos(cid) ----- agr vc naum precisa mudar as coordenadas
doSendMagicEffect(topos,12)
doTeleportThing(player1.uid,temple)
doSendMagicEffect(temple,12)
doPlayerSendTextMessage(player1.uid,22,"Voc� se teleportou para o Templo.")
if item.type > 1 then
doChangeTypeItem(item.uid,item.type-1)
else
doRemoveItem(item.uid,1)
end
return 0
else
doSendMagicEffect(frompos,2)
return 0
end
else
doPlayerSendTextMessage(cid,22,"S� players podes usar esta rune em si pr�prio.")
return 0
end
end