function onUse(cid, item, frompos, item2, topos)
if item.uid == 4300 then
if item.itemid == 1770 then
      -- Explosive Barrel
        doSendMagicEffect(topos,6)
          doPlayerAddHealth(cid,-10000)
    else
        return 0
    end
  end
end



