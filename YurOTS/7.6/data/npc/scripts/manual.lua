-- the id of the creature we are attacking, following, etc.
 
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
         selfSay('Good bye then.')
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
 
 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
 		selfSay('Hello ' .. creatureGetName(cid) .. '! I can teach you the basics about this server Just ask me for a MANUAL. I also sell AoL')
 		focus = cid
 		talk_start = os.clock()
 	end	
	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
 		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
 	end

	if msgcontains(msg, 'manual') and focus == cid then
 		selfSay('I can teach you about the basics, towns, magic, boats, npcs, dungeons.')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'basics') and focus == cid then
 		selfSay('This server is normal PvP. This means you can PK but you will get a skullmark for every unjust kill. After 6 unjusts you get a redskull.')
 		selfSay('With a redskull you will ALWAYS lose all your items when you die, no matter if you wear AoL or not. After 12 unjust kills you will be banned.')
	talk_start = os.clock()
 	end	

	if msgcontains(msg, 'towns') and focus == cid then
 		selfSay('There are so far 4 towns: Survival Island, Infiresla, Dundert and Fort Fear. Each town is in a certain climatic zone. Survival is the capital.')
 		selfSay('Survival is in temperate climate, Infiresla is in volcanic climate, Dundert is in the desert climate and Fort Fear in the forest climate.')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'magic') and focus == cid then
 		selfSay('There are many many different spells and runes. You dont have to learn spells, you know all spells for your vocation and magic level automatically.')
 		selfSay('You can either buy runes at the magic shop or make them yourself. The owner of the Magic Shop is always called Darkrodo.')
		talk_start = os.clock()
 	end

	if msgcontains(msg, 'boat') and focus == cid then
 		selfSay('You will find boats in every town. Just ask the Captain for a PASSAGE and he will tell you where he can take you.')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'npcs') and focus == cid then
 		selfSay('There are many different NPCs. I can give you info about: Darkrodo, Mad, Dufi, Perac, Orlan, Cody, Gandorus,')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'darkrodo') and focus == cid then
 		selfSay('Darkrodo is the master of magics. He sells runes, blank runes and mana fluids.')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'mad') and focus == cid then
 		selfSay('Mad is the guy that will buy all your rare loot that you dont need.')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'dufi') and focus == cid then
 		selfSay('Dufi sells basic weapons.')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'perac') and focus == cid then
 		selfSay('Perac sells bows, crossbows, ammunition and also backpacks, ropes, shovels and rods.')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'cody') and focus == cid then
 		selfSay('Cody sells a selection of basic armor pieces.')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'orlan') and focus == cid then
 		selfSay('At Orlan you can buy your promotion for 100k gold once youre level 120.')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'gandorus') and focus == cid then
 		selfSay('Gandorus lives in his castle in the jungle. He sells AoL. If you wear an AoL you wont lose equipment when you die.')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'guild master') and focus == cid then
 		selfSay('The Guild Master lives in the tavern of Survival Island. He will assist you in creating guilds. Read the sign on the wall in the tavern to learn about the commands.')
 		talk_start = os.clock()
 	end
 
	if msgcontains(msg, 'dungeons') and focus == cid then
 		selfSay('There are many dungeons all over the map. Walk through the stairs under the depot and read the signs to know which teleport takes you to the main hunting places.')
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'aol') and focus == cid then
 		buy(cid,2995,1,10000)
 		talk_start = os.clock()
 	end
 
 	if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
 		selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
 		focus = 0
 		talk_start = 0
 	end
 end
 
 
 function onCreatureChangeOutfit(creature)
 
 end
 
 
 function onThink()
 	if (os.clock() - talk_start) > 30 then
 		if focus > 0 then
 			selfSay('Next Please...')
 		end
 			focus = 0
 	end
 end
 
