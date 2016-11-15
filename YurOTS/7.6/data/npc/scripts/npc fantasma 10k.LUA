focus = 0  
talk_start = 0  
target = 0  
following = false  
attacking = false  

function onThingMove(creature, thing, oldpos, oldstackpos)  
end  

function onCreatureAppear(creature)  
end  


function onCreatureDisappear(cid, pos)  
if focus == cid then  
selfSay('Avisa pra negada que Eu dou 20 k Pra quem me disser "hi" !')  
focus = 0  
talk_start = 0  
end  
end  

function onCreatureTurn(creature)  

endfunction msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and focus == 0) and getDistanceToCreature(cid) < 4 then
   		queststatus = getPlayerStorageValue(cid,7171)
   		if queststatus == -1 then
  		selfSay('Ola ' .. creatureGetName(cid) .. '! Vc Foi abençoado com 2 Crystal coin (20k), Vai ser cagado la puta que pariu...')
		buy(cid,2160,2,0)
   		setPlayerStorageValue(cid,7171,1)
		elseif queststatus == 1 then
  		selfSay('Vai se fuder ' .. creatureGetName(cid) .. '! Vc ja Foi abençoado com 2 Crystal coin (20k), Deixa os outros que ainda naum conseguiram pegar, pegarem ou tentarem... Vai ser cagado la pra puta que pariu...')
end
		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Mals, ' .. creatureGetName(cid) .. '! Quem sabe da proxima vez vc naum ganha 20k...')
		selfSay('/send ' .. creatureGetName(cid) .. ', 160 49 7')

  	elseif focus == cid then
		selfSay('Que que tu quer ' .. creatureGetName(cid) .. ' ??? Ja nao ganhou a grana ? Agora vaza mew...')
		talk_start = os.clock()

		if msgcontains(msg, 'mais') then
  		selfSay('Mais ' .. creatureGetName(cid) .. '??? Vai pedir esmola pra puta que pariu !!!')
		selfSay('/send ' .. creatureGetName(cid) .. ', 160 49 7')
			focus = 0
			talk_start = 0

		elseif msgcontains(msg, 'fdp') then
  		selfSay('/kick ' .. creatureGetName(cid) .. '')

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye, ' .. creatureGetName(cid) .. ', Quem sera o proximo? ...')
		selfSay('/send ' .. creatureGetName(cid) .. ', 160 49 7')
			focus = 0
			talk_start = 0
		end
  	end
end

function onCreatureChangeOutfit(creature)

end


function onThink()  
if (os.clock() - talk_start) > 10 then  
if focus > 0 then  
selfSay('Ihhhh, Qualé tartaruga... Vai demorar muito pra escrever bye???')
end
if (os.clock() - talk_start) > 5 then  
if focus > 0 then
selfSay('Bye Bye! Quem quiser 20k soh me dizer hi...')
selfSay('/send ' .. creatureGetName(focus) .. ', 160 49 7')
end
end
focus = 0  
end
if focus ~= 0 then  
if getDistanceToCreature(focus) > 3 then  
selfSay('Deixa a puta ta tua mae falando sozinha seu fdp...') 
selfSay('/send ' .. creatureGetName(focus) .. ', 160 49 7') 
focus = 0  
end  
end  
if focus == 0 then  
cx, cy, cz = selfGetPosition()  
randmove = math.random(1,25)  
if randmove >= 1 and randmove <= 6 then  
nx = cx + 1  
end  
if randmove >= 7 and randmove <= 10 then  
nx = cx - 1  
end  
if randmove >= 11 and randmove <= 15 then  
ny = cy + 1  
end  
if randmove >= 16 and randmove <= 20 then  
ny = cy - 1  
end  
if randmove >= 20 and randmove <= 23 then  
ny = cy - 1
nx = cx - 2   
end 
if randmove >= 24 then  
nx = cx  
ny = cy  
end  
moveToPosition(nx, ny, cz)  
--summons = 30  
--summons2 = 30  
end

if focus == 0 then  
randsay = math.random(1,60)  
if randsay >= 1 and randsay <= 2 then 
selfSay('Quer 20k ??? Soh me dizer hi...')  
end  
if randsay >= 3 and randsay <= 4 then 
selfSay('Vai ser cagado assim la pa puta que pariu...')  
end  
end  
end