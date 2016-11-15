function onUse(cid, item, frompos, item2, topos)

if item.uid == 4007 then
queststatus = getPlayerStorageValue(cid,6006)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Steel Boots.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2645,1)
setPlayerStorageValue(cid,6006,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end
else
return 0
end
return 1
end
