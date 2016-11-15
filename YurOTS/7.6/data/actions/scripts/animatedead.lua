function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 0 then
return 0
end 
if item.itemid == 3141 then
if item2.itemid == 4175 then
if getPlayerMagLevel(cid) >= 10 then 
doSendMagicEffect(topos,10)
 doSummonCreature("Skeleton", topos)
if item.type > 1 then
  doChangeTypeItem(item.uid,item.type-1)
else
  doRemoveItem(item.uid,1)
end
end
end

if item.itemid == 3141 then
if item2.itemid == 4176 then
if getPlayerMagLevel(cid) >= 10 then 
doSendMagicEffect(topos,10)
 doSummonCreature("Skeleton", topos)
if item.type > 1 then
  doChangeTypeItem(item.uid,item.type-1)
else
  doRemoveItem(item.uid,1)
end
end
end

if item.itemid == 3141 then
if item2.itemid == 4177 then
if getPlayerMagLevel(cid) >= 10 then 
doSendMagicEffect(topos,10)
 doSummonCreature("Skeleton", topos)
if item.type > 1 then
  doChangeTypeItem(item.uid,item.type-1)
else
  doRemoveItem(item.uid,1)
end
end
end

if item.itemid == 3141 then
if item2.itemid == 4182 then
if getPlayerMagLevel(cid) >= 10 then 
doSendMagicEffect(topos,10)
 doSummonCreature("Skeleton", topos)
if item.type > 1 then
  doChangeTypeItem(item.uid,item.type-1)
else
  doRemoveItem(item.uid,1)
end
end
end

if item.itemid == 3141 then
if item2.itemid == 4183 then
if getPlayerMagLevel(cid) >= 10 then 
doSendMagicEffect(topos,10)
 doSummonCreature("Skeleton", topos)
if item.type > 1 then
  doChangeTypeItem(item.uid,item.type-1)
else
  doRemoveItem(item.uid,1)
end
end
end


else
 doSendMagicEffect(frompos,2)
 doPlayerSendCancel(cid,"You don't have the required magic level to use that rune.")
	end
return 1
end
end
end
end
end