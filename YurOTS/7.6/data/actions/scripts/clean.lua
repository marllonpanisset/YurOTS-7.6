--Action by THOTTH 100% (CEM PORCENTOOOOOOOO!) -- VERSAO 1.0 --

function onUse(cid, item, frompos, item2, topos)

itempos = {x=topos.x, y=topos.y, z=topos.z, stackpos=1}
item = getThingfromPos(itempos)

if getPlayerAccess(cid) >= 1 then 

doRemoveItem(item.uid,1)
doSendMagicEffect(itempos,2)
doPlayerSendTextMessage(cid,22,"Você removeu um Item.")

elseif getPlayerAccess(cid) >= 0 then

doPlayerSendTextMessage(cid,22,"Somente GM usa esta runa.")

end
end
