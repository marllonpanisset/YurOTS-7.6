function onUse(cid, item, frompos, item2, topos)
if getPlayerAccess(cid) ~=0 then
doPlayerSendTextMessage(cid,22,'ID: '..item2.itemid..' | UID='..item2.uid..' | AID='..item2.actionid..' | '..topos.x..'/'..topos.y..'/'..topos.z..'')
else
return 0
end
return 1
end