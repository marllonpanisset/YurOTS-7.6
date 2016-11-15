-- DHITEMUM
   if item.uid == 6061 then
   queststatus = getPlayerStorageValue(cid,6061)
   if queststatus == -1 then
   if getPlayerLevel(cid) >= 100
   doPlayerSendTextMessage(cid,22,"You have found a Demon Helmet .")
   doPlayerAddItem(cid,3358,1)
   setPlayerStorageValue(cid,6061,1)
   else
   doPlayerSendTextMessage(cid,22,"Only level 100 or more can have it.")
   end
   else
   doPlayerSendTextMessage(cid,22,"It is empty.")
   end