function onUse(cid, item, frompos, item2, topos)

doSummonCreature("Green Djinn", topos)
doSendMagicEffect(topos,14)
doRemoveItem(item.uid,1)

return 1
end




