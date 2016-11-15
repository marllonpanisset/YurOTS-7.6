-- DHITEMUM
   if item.uid == 6060 then
   queststatus = getPlayerStorageValue(cid,6060)
   if queststatus == -1 then
   if getPlayerLevel(cid) >= 100
   doPlayerSendTextMessage(cid,22,"You have found a Demon Helmet .")
   doPlayerAddItem(cid,3325,1)
   setPlayerStorageValue(cid,6060,1)
   else
   doPlayerSendTextMessage(cid,22,"Only level 100 or more can have it.")
   end
   else
   doPlayerSendTextMessage(cid,22,"It is empty.")
   end