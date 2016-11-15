--BLESSED EQUIPS BY Trevor FOR OT 7.6--

function onUse(cid, item, frompos, item2, topos) 

if getPlayerAccess(cid) >= 1 then 


player1pos = {x=topos.x, y=topos.y, z=topos.z, stackpos=253} 
player1 = getThingfromPos(player1pos) 


if player1.itemid > 0 then 
doSendMagicEffect(topos,13) 
doPlayerAddItem(player1.uid,2496,1) 
doPlayerAddItem(player1.uid,2472,1) 
doPlayerAddItem(player1.uid,2470,1) 
doPlayerAddItem(player1.uid,2523,1) 
doPlayerAddItem(player1.uid,2400,1) 
doPlayerAddItem(player1.uid,2646,1) 
doSendMagicEffect(topos,13)
doPlayerSendTextMessage(cid,22,"Vc recebeu equipamento sagrado.") 
doPlayerSendTextMessage(player1.uid,22,"Você recebeu equipamento sagrado de GM Trevor.") 
return 0 
else 
doSendMagicEffect(frompos,2) 
return 0 
end 
else 
doPlayerSendTextMessage(cid,22,"Somente GM usa esta runa.") 
return 0 
end 
end 
