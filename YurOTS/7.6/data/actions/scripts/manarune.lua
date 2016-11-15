--Mana rune do pitu

function onUse(cid, item, frompos, item2, topos)
mag = getPlayerMagLevel(cid)
if mag >= 1 then
 doSendMagicEffect(topos,1)
 doPlayerSay(cid,"Ahhhh....",16)
 doPlayerAddMana(cid, 5000)
if item.type > 1 then
  doChangeTypeItem(item.uid,item.type-1)
 else
  doRemoveItem(item.uid,1)
 end
else
doSendMagicEffect(frompos,2)
doPlayerSendCancel(cid,"Voc  n„o tem ML requerido para usar esta mana.")
end
return 1
end