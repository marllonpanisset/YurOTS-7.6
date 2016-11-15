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
         selfSay('Good Bye.')
         focus = 0
         talk_start = 0
 	end
 end
 
 
 function onCreatureTurn(creature)
 
 end
 
 function msgcontains(txt, str)
 	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
 end
 
 function onCreatureSay(cid, type, msg)
 	msg = string.lower(msg)
 
 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
 		selfSay('Hiho ' .. creatureGetName(cid) .. '! I sell ALL equipments: Shields, Helmets, Legs, Armors, Weapons, Amulets and Rings. Say the name of the item what you want and I will sell for you!')
 		focus = cid
 		talk_start = os.clock()
 	end
 
 	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
 		selfSay('Wait Please.')
 	end
 
 	if msgcontains(msg, 'knife') and focus == cid then
 		buy(cid,3229,1,5)
 		talk_start = os.clock()
 	end
 	if msgcontains(msg, 'dagger') and focus == cid then
 		buy(cid,3205,1,10)
 		talk_start = os.clock()
 	end 	

        if msgcontains(msg, 'combat knife') and focus == cid then
 		buy(cid,3230,1,15)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'silver dagger') and focus == cid then
 		buy(cid,3228,1,20)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'rapier') and focus == cid then
 		buy(cid,3210,1,25)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'short sword') and focus == cid then
 		buy(cid,3232,1,30)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'sabre') and focus == cid then
 		buy(cid,3211,1,35)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'bone sword') and focus == cid then
 		buy(cid,3276,1,40)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'carlin sword') and focus == cid then
 		buy(cid,3221,1,45)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'sword') and focus == cid then
 		buy(cid,3202,1,50)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'heavy machete') and focus == cid then
 		buy(cid,3268,1,70)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'katana') and focus == cid then
 		buy(cid,3238,1,80)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'long sword') and focus == cid then
 		buy(cid,3223,1,100)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'poison dagger') and focus == cid then
 		buy(cid,3237,1,120)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'scimitar') and focus == cid then
 		buy(cid,3245,1,150)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'templar scytheblade') and focus == cid then
 		buy(cid,3283,1,500)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'broad sword') and focus == cid then
 		buy(cid,3239,1,300)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'serpent sword') and focus == cid then
 		buy(cid,3235,1,600)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'two-handed sword') and focus == cid then
 		buy(cid,3203,1,800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'fire sword') and focus == cid then
 		buy(cid,3218,1,5000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'bright sword') and focus == cid then
 		buy(cid,3233,1,15000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'giant sword') and focus == cid then
 		buy(cid,3219,1,20000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'magic sword') and focus == cid then
 		buy(cid,3226,1,150000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'warlord sword') and focus == cid then
 		buy(cid,3234,1,250000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'magic long sword') and focus == cid then
 		buy(cid,3216,1,400000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'ice rapier') and focus == cid then
 		buy(cid,3222,1,3000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'crowbar') and focus == cid then
 		buy(cid,3242,1,100)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'club') and focus == cid then
 		buy(cid,3208,1,5)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'scythe') and focus == cid then
 		buy(cid,3391,1,10)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'studded club') and focus == cid then
 		buy(cid,3274,1,15)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'bone club') and focus == cid then
 		buy(cid,3275,1,25)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'mace') and focus == cid then
 		buy(cid,3224,1,30)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'iron hammer') and focus == cid then
 		buy(cid,3248,1,80)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'daramanian mace') and focus == cid then
 		buy(cid,3265,1,100)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'battle hammer') and focus == cid then
 		buy(cid,3146,1,120)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'morning star') and focus == cid then
 		buy(cid,3220,1,150)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'banana staff') and focus == cid then
 		buy(cid,3286,1,500)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'clerical mace') and focus == cid then
 		buy(cid,3249,1,400)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'dragon hammer') and focus == cid then
 		buy(cid,3260,1,3000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'skull staff') and focus == cid then
 		buy(cid,3262,1,10000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'crystal mace') and focus == cid then
 		buy(cid,3271,1,40000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'silver mace') and focus == cid then
 		buy(cid,3250,1,80000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'war hammer') and focus == cid then
 		buy(cid,3217,1,5000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'hammer of wrath') and focus == cid then
 		buy(cid,3270,1,100000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'thunder hammer') and focus == cid then
 		buy(cid,3247,1,150000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'staff') and focus == cid then
 		buy(cid,3227,1,400)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'magic staff') and focus == cid then
 		buy(cid,3259,1,15000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'sickle') and focus == cid then
 		buy(cid,3231,1,5)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'hand axe') and focus == cid then
 		buy(cid,3206,1,10)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'axe') and focus == cid then
 		buy(cid,3212,1,20)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'golden sickle') and focus == cid then
 		buy(cid,3244,1,1000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'hatchet') and focus == cid then
 		buy(cid,3214,1,30)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'hunting spear') and focus == cid then
 		buy(cid,3285,1,500)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'orcish axe') and focus == cid then
 		buy(cid,3254,1,400)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'battle axe') and focus == cid then
 		buy(cid,3204,1,600)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'ripper lance') and focus == cid then
 		buy(cid,3284,1,2000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'barbarian axe') and focus == cid then
 		buy(cid,3255,1,800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'knight axe') and focus == cid then
 		buy(cid,3256,1,3000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'obsidian lance') and focus == cid then
 		buy(cid,3251,1,600)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'double axe') and focus == cid then
 		buy(cid,3213,1,800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'halberd') and focus == cid then
 		buy(cid,3207,1,900)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'fire axe') and focus == cid then
 		buy(cid,3258,1,12000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'naginata') and focus == cid then
 		buy(cid,3252,1,10000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'daramanian waraxe') and focus == cid then
 		buy(cid,3266,1,10000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'guardian halberd') and focus == cid then
 		buy(cid,3253,1,15000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'dragon lance') and focus == cid then
 		buy(cid,3240,1,20000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'stonecutter axe') and focus == cid then
 		buy(cid,3257,1,150000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'great axe') and focus == cid then
 		buy(cid,3241,1,300000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'simple dress') and focus == cid then
 		buy(cid,3506,1,200)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'ball gown') and focus == cid then
 		buy(cid,3508,1,300)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'cape') and focus == cid then
 		buy(cid,3503,1,50)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'jacket') and focus == cid then
 		buy(cid,3500,1,10)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'green tunic') and focus == cid then
 		buy(cid,3501,1,50)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'red robe') and focus == cid then
 		buy(cid,3504,1,20000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'doublet') and focus == cid then
 		buy(cid,3317,1,30)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'red tunic') and focus == cid then
 		buy(cid,3502,1,300)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'leather armor') and focus == cid then
 		buy(cid,3299,1,40)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'studded armor') and focus == cid then
 		buy(cid,3316,1,60)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'chain armor') and focus == cid then
 		buy(cid,3296,1,200)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'brass armor') and focus == cid then
 		buy(cid,3297,1,400)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'scale armor') and focus == cid then
 		buy(cid,3315,1,300)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'plate armor') and focus == cid then
 		buy(cid,3295,1,800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'dark armor') and focus == cid then
 		buy(cid,3321,1,1000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'noble armor') and focus == cid then
 		buy(cid,3318,1,2000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'knight armor') and focus == cid then
 		buy(cid,3308,1,5000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'crown armor') and focus == cid then
 		buy(cid,3319,1,10000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'lady armor') and focus == cid then
 		buy(cid,3332,1,12000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'blue robe') and focus == cid then
 		buy(cid,3505,1,11000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'golden armor') and focus == cid then
 		buy(cid,3298,1,50000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'dragon scale mail') and focus == cid then
 		buy(cid,3324,1,120000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'demon armor') and focus == cid then
 		buy(cid,3326,1,300000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'magic plate armor') and focus == cid then
 		buy(cid,3304,1,500000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'wooden shield') and focus == cid then
 		buy(cid,3350,1,10)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'studded shield') and focus == cid then
 		buy(cid,3364,1,40)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'brass shield') and focus == cid then
 		buy(cid,3349,1,60)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'plate shield') and focus == cid then
 		buy(cid,3348,1,100)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'black shield') and focus == cid then
 		buy(cid,3367,1,400)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'copper shield') and focus == cid then
 		buy(cid,3368,1,250)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'bone shield') and focus == cid then
 		buy(cid,3379,1,400)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'steel shield') and focus == cid then
 		buy(cid,3347,1,400)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'sentinel shield') and focus == cid then
 		buy(cid,3382,1,800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'ornamented shield') and focus == cid then
 		buy(cid,3362,1,600)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'viking shield') and focus == cid then
 		buy(cid,3369,1,700)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'battle shield') and focus == cid then
 		buy(cid,3351,1,500)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'scarab shield') and focus == cid then
 		buy(cid,3378,1,1200)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'dark shield') and focus == cid then
 		buy(cid,3359,1,600)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'salamander shield') and focus == cid then
 		buy(cid,3383,1,1800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'dwarven shield') and focus == cid then
 		buy(cid,3363,1,200)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'tusk shield') and focus == cid then
 		buy(cid,3381,1,1000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'ancient shield') and focus == cid then
 		buy(cid,3370,1,800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'rose shield') and focus == cid then
 		buy(cid,3365,1,2000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'castle shield') and focus == cid then
 		buy(cid,3373,1,8000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'beholder shield') and focus == cid then
 		buy(cid,3356,1,1500)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'griffin shield') and focus == cid then
 		buy(cid,3371,1,2000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'guardian shield') and focus == cid then
 		buy(cid,3353,1,2500)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'dragon shield') and focus == cid then
 		buy(cid,3354,1,4000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'tower shield') and focus == cid then
 		buy(cid,3366,1,6000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'crown shield') and focus == cid then
 		buy(cid,3357,1,7000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'amazon shield') and focus == cid then
 		buy(cid,3375,1,10000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'medusa shield') and focus == cid then
 		buy(cid,3374,1,10000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'shield of honour') and focus == cid then
 		buy(cid,3355,1,12000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'vampire shield') and focus == cid then
 		buy(cid,3372,1,20000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'phoenix shield') and focus == cid then
 		buy(cid,3377,1,23000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'demon shield') and focus == cid then
 		buy(cid,3358,1,40000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'mastermind shield') and focus == cid then
 		buy(cid,3352,1,150000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'great shield') and focus == cid then
 		buy(cid,3360,1,300000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'blessed shield') and focus == cid then
 		buy(cid,3361,1,500000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'bast skirt') and focus == cid then
 		buy(cid,3498,1,500)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'leather legs') and focus == cid then
 		buy(cid,3497,1,15)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'studded legs') and focus == cid then
 		buy(cid,3300,1,100)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'chain legs') and focus == cid then
 		buy(cid,3496,1,80)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'brass legs') and focus == cid then
 		buy(cid,3310,1,200)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'plate legs') and focus == cid then
 		buy(cid,3495,1,1000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'knight legs') and focus == cid then
 		buy(cid,3309,1,10000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'crown legs') and focus == cid then
 		buy(cid,3320,1,25000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'golden legs') and focus == cid then
 		buy(cid,3302,1,150000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'demon legs') and focus == cid then
 		buy(cid,3327,1,400000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'dragon scale legs') and focus == cid then
 		buy(cid,3301,1,800000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'mystic turban') and focus == cid then
 		buy(cid,3512,1,1000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'post officers hat') and focus == cid then
 		buy(cid,3514,1,2000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'magician hat') and focus == cid then
 		buy(cid,3511,1,1000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'leather helmet') and focus == cid then
 		buy(cid,3293,1,5)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'tribal mask') and focus == cid then
 		buy(cid,3341,1,3000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'feather headdress') and focus == cid then
 		buy(cid,3344,1,3000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'chain helmet') and focus == cid then
 		buy(cid,3290,1,25)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'studded helmet') and focus == cid then
 		buy(cid,3314,1,40)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'brass helmet') and focus == cid then
 		buy(cid,3292,1,45)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'viking helmet') and focus == cid then
 		buy(cid,3305,1,60)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'legion helmet') and focus == cid then
 		buy(cid,3312,1,100)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'steel helmet') and focus == cid then
 		buy(cid,3289,1,200)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'horseman helmet') and focus == cid then
 		buy(cid,3343,1,1000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'dark helmet') and focus == cid then
 		buy(cid,3322,1,200)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'strange helmet') and focus == cid then
 		buy(cid,3311,1,300)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'lady helmet') and focus == cid then
 		buy(cid,3331,1,4000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'crown helmet') and focus == cid then
 		buy(cid,3323,1,3000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'devil helmet') and focus == cid then
 		buy(cid,3294,1,2000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'warrior helmet') and focus == cid then
 		buy(cid,3307,1,6000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'crusader helmet') and focus == cid then
 		buy(cid,3329,1,10000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'helmet of the ancients') and focus == cid then
 		buy(cid,3333,1,50000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'royal helmet') and focus == cid then
 		buy(cid,3330,1,80000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'demon helmet') and focus == cid then
 		buy(cid,3325,1,300000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'winged helmet') and focus == cid then
 		buy(cid,3306,1,350000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'horned helmet') and focus == cid then
 		buy(cid,3328,1,450000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'full helmet of the ancients') and focus == cid then
 		buy(cid,3168,1,600000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'golden helmet') and focus == cid then
 		buy(cid,3303,1,1000000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'boots of haste') and focus == cid then
 		buy(cid,3017,1,40000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'soft boots') and focus == cid then
 		buy(cid,3184,1,60000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'sandals') and focus == cid then
 		buy(cid,3489,1,400)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'leather boots') and focus == cid then
 		buy(cid,3490,1,10)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'crocodile boots') and focus == cid then
 		buy(cid,3494,1,2000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'steel boots') and focus == cid then
 		buy(cid,3492,1,100000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'golden boots') and focus == cid then
 		buy(cid,3493,1,2000000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'bronze amulet') and focus == cid then
 		buy(cid,2994,1,200)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'crystal necklace') and focus == cid then
 		buy(cid,2946,1,300)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'dragon necklace') and focus == cid then
 		buy(cid,3023,1,500)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'elven amulet') and focus == cid then
 		buy(cid,2952,1,1000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'garlic necklace') and focus == cid then
 		buy(cid,3021,1,500)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'golden amulet') and focus == cid then
 		buy(cid,2951,1,7000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'platinum amulet') and focus == cid then
 		buy(cid,2993,1,5000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'ruby necklace') and focus == cid then
 		buy(cid,2954,1,2000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'protection amulet') and focus == cid then
 		buy(cid,3022,1,700)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'silver amulet') and focus == cid then
 		buy(cid,2953,1,100)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'silver necklace') and focus == cid then
 		buy(cid,2992,1,500)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'stone skin amulet') and focus == cid then
 		buy(cid,3019,1,3000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'strange symbol') and focus == cid then
 		buy(cid,2996,1,1000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'strange talisman') and focus == cid then
 		buy(cid,3144,1,800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'scarab amulet') and focus == cid then
 		buy(cid,2956,1,2000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'demonbones amulet') and focus == cid then
 		buy(cid,2957,1,10000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'amulet') and focus == cid then
 		buy(cid,2959,1,100)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'leaf with golden items') and focus == cid then
 		buy(cid,2958,1,400)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'axe ring') and focus == cid then
 		buy(cid,3030,1,200)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'club ring') and focus == cid then
 		buy(cid,3031,1,200)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'sword ring') and focus == cid then
 		buy(cid,3029,1,200)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'crystal ring') and focus == cid then
 		buy(cid,2945,1,1000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'dwarven ring') and focus == cid then
 		buy(cid,3035,1,50)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'energy ring') and focus == cid then
 		buy(cid,2989,1,800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'gold ring') and focus == cid then
 		buy(cid,3001,1,8000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'life ring') and focus == cid then
 		buy(cid,3027,1,800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'might ring') and focus == cid then
 		buy(cid,2986,1,800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'power ring') and focus == cid then
 		buy(cid,2988,1,100)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'ring of healing') and focus == cid then
 		buy(cid,3036,1,800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'ring of the skies') and focus == cid then
 		buy(cid,3183,1,50000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'stealth ring') and focus == cid then
 		buy(cid,2987,1,800)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'time ring') and focus == cid then
 		buy(cid,2991,1,2000)
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'wedding ring') and focus == cid then
 		buy(cid,2942,1,1000)
 		talk_start = os.clock()
 	end
 
 	if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
 		selfSay('Good bye and enjoy with the item you bought.')
 		focus = 0
 		talk_start = 0
 	end
 end
 
 
 function onCreatureChangeOutfit(creature)
 
 end
 
 
 function onThink()
 	if (os.clock() - talk_start) > 30 then
 		if focus > 0 then
 			selfSay('Next now!!')
 		end
 			focus = 0
 	end
 end
 
