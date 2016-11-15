------ Bed System 0.2 by Trevor -----

max_sleep = 300
sleep1 = 150

function onUse(cid, item, frompos, item2, topos)

if (getPlayerFood(cid) + sleep1 > max_sleep) then
doPlayerSendCancel(cid,"Você esta sem sono.")
return 1
end

doSendMagicEffect(frompos,12)
doPlayerSendTextMessage(cid,22,"Boa Noite")
doPlayerSay(cid,"Ohhhhhhhh!!!",16)
doPlayerAddHealth(cid,10000)
doPlayerAddMana(cid,10000)
doPlayerFeed(cid,sleep1)
doPlayerSendTextMessage(cid,22,"Você dormiu bem!.")
return 1
end



