function onUse(cid, item, frompos, item2, topos)




















	-- ds quest
	if item.uid == 2801 then
  		queststatus = getPlayerStorageValue(cid,2801)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 20 then
  				doPlayerSendTextMessage(cid,22,"You have found Dragon Hammer.")
  				doPlayerAddItem(cid,2434,1)
  				setPlayerStorageValue(cid,2801,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 20 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- ds quest 2
	elseif item.uid == 2802 then
  		queststatus = getPlayerStorageValue(cid,2802)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 20 then
  				doPlayerSendTextMessage(cid,22,"You have found Tower Shield.")
  				doPlayerAddItem(cid,2528,1)
  				setPlayerStorageValue(cid,2802,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 20 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- witch quest
	elseif item.uid == 2803 then
  		queststatus = getPlayerStorageValue(cid,2803)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 15 then
  				doPlayerSendTextMessage(cid,22,"You have found 50 Platinum Coins.")
  				doPlayerAddItem(cid,2152,50)
  				setPlayerStorageValue(cid,2803,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 15 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- witch quest 2
	elseif item.uid == 2804 then
  		queststatus = getPlayerStorageValue(cid,2804)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 15 then
  				doPlayerSendTextMessage(cid,22,"You have found Guardian Shield.")
  				doPlayerAddItem(cid,2515,1)
  				setPlayerStorageValue(cid,2804,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 15 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- cyclops quest
	elseif item.uid == 2805 then
  		queststatus = getPlayerStorageValue(cid,2805)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 15 then
  				doPlayerSendTextMessage(cid,22,"You have found Noble Armor.")
  				doPlayerAddItem(cid,2486,1)
  				setPlayerStorageValue(cid,2805,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 15 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- gs quest
	elseif item.uid == 2806 then
  		queststatus = getPlayerStorageValue(cid,2806)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 30 then
  				doPlayerSendTextMessage(cid,22,"You have found Boots of Haste.")
  				doPlayerAddItem(cid,2195,1)
  				setPlayerStorageValue(cid,2806,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 30 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- dragon quest
	elseif item.uid == 2807 then
  		queststatus = getPlayerStorageValue(cid,2807)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 25 then
  				doPlayerSendTextMessage(cid,22,"You have found Dragon Shield.")
  				doPlayerAddItem(cid,2516,1)
  				setPlayerStorageValue(cid,2807,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 25 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- dragon lord quest
	elseif item.uid == 2808 then
  		queststatus = getPlayerStorageValue(cid,2808)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 40 then
  				doPlayerSendTextMessage(cid,22,"You have found Fire Axe.")
  				doPlayerAddItem(cid,2432,1)
  				setPlayerStorageValue(cid,2808,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 40 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- dragon lord quest 2
	elseif item.uid == 2809 then
  		queststatus = getPlayerStorageValue(cid,2809)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 40 then
  				doPlayerSendTextMessage(cid,22,"You have found Amazon Shield.")
  				doPlayerAddItem(cid,2537,1)
  				setPlayerStorageValue(cid,2809,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 40 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- dragon lord quest 3
	elseif item.uid == 2810 then
  		queststatus = getPlayerStorageValue(cid,2810)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 40 then
  				doPlayerSendTextMessage(cid,22,"You have found Amulet of Loss.")
  				doPlayerAddItem(cid,2173,1)
  				setPlayerStorageValue(cid,2810,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 40 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- dragon lord quest 4
	elseif item.uid == 2811 then
  		queststatus = getPlayerStorageValue(cid,2811)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 40 then
  				doPlayerSendTextMessage(cid,22,"You have found 3 Crystal Coins.")
  				doPlayerAddItem(cid,2160,3)
  				setPlayerStorageValue(cid,2811,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 40 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- necro quest
	elseif item.uid == 2812 then
  		queststatus = getPlayerStorageValue(cid,2812)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 40 then
  				doPlayerSendTextMessage(cid,22,"You have found Blue Robe.")
  				doPlayerAddItem(cid,2656,1)
  				setPlayerStorageValue(cid,2812,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 40 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- dragon lord quest 5
	elseif item.uid == 2813 then
  		queststatus = getPlayerStorageValue(cid,2813)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found War Hammer.")
  				doPlayerAddItem(cid,2391,1)
  				setPlayerStorageValue(cid,2813,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- dragon lord quest 6
	elseif item.uid == 2814 then
  		queststatus = getPlayerStorageValue(cid,2814)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found Fire Sword.")
  				doPlayerAddItem(cid,2392,1)
  				setPlayerStorageValue(cid,2814,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- necro quest 2
	elseif item.uid == 2815 then
  		queststatus = getPlayerStorageValue(cid,2815)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found Crown Shield.")
  				doPlayerAddItem(cid,2519,1)
  				setPlayerStorageValue(cid,2815,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- necro quest 3
	elseif item.uid == 8001 then
  		queststatus = getPlayerStorageValue(cid,8001)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found Guardian Halberd.")
  				doPlayerAddItem(cid,2427,1)
  				setPlayerStorageValue(cid,8001,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- Demon quest
	elseif item.uid == 8002 then
  		queststatus = getPlayerStorageValue(cid,8002)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 80 then
  				doPlayerSendTextMessage(cid,22,"You have found Magic Plate Armor.")
  				doPlayerAddItem(cid,2472,1)
  				setPlayerStorageValue(cid,8002,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 80 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end


	-- behe quest
	elseif item.uid == 8003 then
  		queststatus = getPlayerStorageValue(cid,8003)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 80 then
  				doPlayerSendTextMessage(cid,22,"You have found Giant Sword.")
  				doPlayerAddItem(cid,2393,1)
  				setPlayerStorageValue(cid,8003,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 80 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- behe quest 2
	elseif item.uid == 8004 then
  		queststatus = getPlayerStorageValue(cid,8004)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 80 then
  				doPlayerSendTextMessage(cid,22,"You have found Mastermind Shield.")
  				doPlayerAddItem(cid,2514,1)
  				setPlayerStorageValue(cid,8004,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 80 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- hydra quest
	elseif item.uid == 8005 then
  		queststatus = getPlayerStorageValue(cid,8005)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 40 then
  				doPlayerSendTextMessage(cid,22,"You have found Dragon Lance.")
  				doPlayerAddItem(cid,2414,1)
  				setPlayerStorageValue(cid,8005,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 40 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- pharao quest
	elseif item.uid == 8006 then
  		queststatus = getPlayerStorageValue(cid,8006)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 60 then
  				doPlayerSendTextMessage(cid,22,"You have found Golden Armor.")
  				doPlayerAddItem(cid,2466,1)
  				setPlayerStorageValue(cid,8006,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 60 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- pharao quest 2
	elseif item.uid == 8007 then
  		queststatus = getPlayerStorageValue(cid,8007)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 60 then
  				doPlayerSendTextMessage(cid,22,"You have found Royal Helmet.")
  				doPlayerAddItem(cid,2498,1)
  				setPlayerStorageValue(cid,8007,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 60 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- pharao quest 3
	elseif item.uid == 8008 then
  		queststatus = getPlayerStorageValue(cid,8008)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 110 then
  				doPlayerSendTextMessage(cid,22,"You have found Helmet of the Ancients.")
  				doPlayerAddItem(cid,2343,1)
  				setPlayerStorageValue(cid,8008,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 110 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- pharao quest 4
	elseif item.uid == 8009 then
  		queststatus = getPlayerStorageValue(cid,8009)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 80 then
  				doPlayerSendTextMessage(cid,22,"You have found Golden Legs.")
  				doPlayerAddItem(cid,2470,1)
  				setPlayerStorageValue(cid,8009,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 80 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- pharao quest 5
	elseif item.uid == 8010 then
  		queststatus = getPlayerStorageValue(cid,8010)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 80 then
  				doPlayerSendTextMessage(cid,22,"You have found Demon Shield.")
  				doPlayerAddItem(cid,2520,1)
  				setPlayerStorageValue(cid,8010,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 80 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- as quest
	elseif item.uid == 8011 then
  		queststatus = getPlayerStorageValue(cid,8011)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found Ice Rapier.")
  				doPlayerAddItem(cid,3222,1)
  				setPlayerStorageValue(cid,8011,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- as quest 2
	elseif item.uid == 8012 then
  		queststatus = getPlayerStorageValue(cid,8012)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found Crown Legs.")
  				doPlayerAddItem(cid,3320,1)
  				setPlayerStorageValue(cid,8012,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- as quest 3
	elseif item.uid == 8013 then
  		queststatus = getPlayerStorageValue(cid,8013)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found Amazon Shield.")
  				doPlayerAddItem(cid,3375,1)
  				setPlayerStorageValue(cid,8013,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- priesst quest
	elseif item.uid == 8014 then
  		queststatus = getPlayerStorageValue(cid,8014)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found 2 Crystal Coins.")
  				doPlayerAddItem(cid,2981,2)
  				setPlayerStorageValue(cid,8014,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- bk quest
	elseif item.uid == 8015 then
  		queststatus = getPlayerStorageValue(cid,8015)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found Knight Armor.")
  				doPlayerAddItem(cid,2476,1)
  				setPlayerStorageValue(cid,8015,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- bk quest 2
	elseif item.uid == 8016 then
  		queststatus = getPlayerStorageValue(cid,8016)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found Knight Legs.")
  				doPlayerAddItem(cid,2477,1)
  				setPlayerStorageValue(cid,8016,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- bk quest 3
	elseif item.uid == 8017 then
  		queststatus = getPlayerStorageValue(cid,8017)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found Warrior Helmet.")
  				doPlayerAddItem(cid,2475,1)
  				setPlayerStorageValue(cid,8017,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- bk quest 4
	elseif item.uid == 8018 then
  		queststatus = getPlayerStorageValue(cid,8018)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found Skull Staf.")
  				doPlayerAddItem(cid,2436,1)
  				setPlayerStorageValue(cid,8018,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- hero quest
	elseif item.uid == 8019 then
  		queststatus = getPlayerStorageValue(cid,8019)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 35 then
  				doPlayerSendTextMessage(cid,22,"You have found Crown Armor.")
  				doPlayerAddItem(cid,2487,1)
  				setPlayerStorageValue(cid,8019,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 35 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- hero quest 2
	elseif item.uid == 8020 then
  		queststatus = getPlayerStorageValue(cid,8020)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 35 then
  				doPlayerSendTextMessage(cid,22,"You have found Crown Helmet.")
  				doPlayerAddItem(cid,2491,1)
  				setPlayerStorageValue(cid,8020,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 35 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- warlock quest
	elseif item.uid == 8021 then
  		queststatus = getPlayerStorageValue(cid,8021)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 50 then
  				doPlayerSendTextMessage(cid,22,"You have found Dragon Scale Mail.")
  				doPlayerAddItem(cid,2492,1)
  				setPlayerStorageValue(cid,8021,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- cyc quest
	elseif item.uid == 8022 then
  		queststatus = getPlayerStorageValue(cid,8022)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 25 then
  				doPlayerSendTextMessage(cid,22,"You have found Beholder Shield.")
  				doPlayerAddItem(cid,2518,1)
  				setPlayerStorageValue(cid,8022,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 25 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- cyc quest 2
	elseif item.uid == 8023 then
  		queststatus = getPlayerStorageValue(cid,8023)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 25 then
  				doPlayerSendTextMessage(cid,22,"You have found Knight Axe.")
  				doPlayerAddItem(cid,2430,1)
  				setPlayerStorageValue(cid,8023,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 25 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- vamp quest
	elseif item.uid == 8024 then
  		queststatus = getPlayerStorageValue(cid,8024)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 25 then
  				doPlayerSendTextMessage(cid,22,"You have found Vampire Shield.")
  				doPlayerAddItem(cid,2534,1)
  				setPlayerStorageValue(cid,8024,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 25 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- vamp quest 2
	elseif item.uid == 8025 then
  		queststatus = getPlayerStorageValue(cid,8025)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 25 then
  				doPlayerSendTextMessage(cid,22,"You have found Dwarven Axe.")
  				doPlayerAddItem(cid,2435,1)
  				setPlayerStorageValue(cid,8025,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 25 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- vamp quest 3
	elseif item.uid == 8026 then
  		queststatus = getPlayerStorageValue(cid,8026)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 25 then
  				doPlayerSendTextMessage(cid,22,"You have found 50 Platinum Coins.")
  				doPlayerAddItem(cid,2152,50)
  				setPlayerStorageValue(cid,8026,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 25 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- crusader quest
	elseif item.uid == 8027 then
  		queststatus = getPlayerStorageValue(cid,8027)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 25 then
  				doPlayerSendTextMessage(cid,22,"You have found Crusader Helmet.")
  				doPlayerAddItem(cid,2497,1)
  				setPlayerStorageValue(cid,8027,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 40 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end

	-- Demon Helmet quest
	elseif item.uid == 8028 then
  		queststatus = getPlayerStorageValue(cid,8028)
  		if queststatus == -1 then
  			if getPlayerLevel(cid) >= 100 then
  				doPlayerSendTextMessage(cid,22,"You have found Demon Helmet.")
  				doPlayerAddItem(cid,2493,1)
  				setPlayerStorageValue(cid,8028,1)
  			else
  				doPlayerSendTextMessage(cid,22,"You need level 100 to get prize.")
  			end
  		else
  			doPlayerSendTextMessage(cid,22,"It is empty.")
  		end


	end
  	return 1
  end
