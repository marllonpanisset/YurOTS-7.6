-- Version 1.3 - by Heliton upgrade by Trevor--
function onUse(cid, item, frompos, item2, topos)
playeraccess = getPlayerAccess(cid)
playername = getPlayerName(item2.uid)
player2access = getPlayerAccess(item2.uid)
if playeraccess >= 1 and item2.itemid == cid then
if player2access == 0 then
doPlayerSay(cid,'/B O jogador '..playername..' foi banido por desrespeitar as regras do server.',23)
doPlayerSay(cid,'/b '..playername..'',1)
else
doPlayerSendCancel(cid,"Você não pode usar esta runa.")
end
else
return 0
end
return 1
end