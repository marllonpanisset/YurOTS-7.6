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
         selfSay('[Palavrao Censurado]')
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

 	if ((string.find(msg, '(%a*)oi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 4 then
 		selfSay('Aew ' .. creatureGetName(cid) .. '! Eu posso lhe dar infos sobre os membros do Otserv Brasil Forum, fale o nick e eu lhe darei a info, gratis!')
 		focus = cid
 		talk_start = os.clock()
	end
		if string.find(msg, '(%a*)oi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
 		selfSay('Player Alertado verbalmente por floodar e spammear nesse server.')
	end

 	if msgcontains(msg, 'magus') and focus == cid then
			selfSay('O magus? bom..hum.. ele nunca recebeu alerta nenhum o.O, ajuda as pessoas sempre, aaa num posso contarr!!! ta bom vai, ja que vc insiste, eu amu ele =***')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'kinho') and focus == cid then
			selfSay('Opa o Kinho, gente boa! sempre ajudando o meu forum a progredir, ele e todos os moderas, mas nu meu corasaum so tem lugar pro magus :(')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'dragon dark') and focus == cid then
			selfSay('exevo gran mas pox')
			selfSay('[Palavrao Censurado], nunca mais fale meu nome, isso e so uma amostra du meu poder :O! -.-"')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'toad') and focus == cid then
			selfSay('heheheh, de todos os meus membros, o Toad e o q mais assusta a galera o.O, puta cagaum que dei qdo vi a menina do corredor ta mlk!!? mas tb e um otimo moderador, cuida de uma das sessoes mais dificies e "chatas" :S')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'sl4sh') and focus == cid then
			selfSay('eita [Palavrao Censurado], agora num sei de quem eu gosto mais! do Magus ou du sl4sh o.O... seila, minha boca eh um tumulo agora =x')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'neicome') and focus == cid then
			selfSay('ee chego no meu amiginhu :) eu gosto muito dele =*** neicome trabalha muito bem, se vc reclamar vai ser Alertado Verbalmente por HUMILHAR um membro do forum.')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'douglasfjg') and focus == cid then
			selfSay('-.-" Plagiou o script do meu amigo Magus, vo te BANIR!!!! o.O.. zuera aew douglas meu membrinho favorito ¬¬" xD')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'tiago') and focus == cid then
			selfSay('pow dele num tem o q reclamar [Palavrao Censurado], mo gente boa, pow, ele axa q o cabelo do Rappa e um bombrilzaum O.O, uuAHUahuHAuahUAHUhauHA.')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'fdp') and focus == cid then
			selfSay('Usuario Alertado verbalmente por tentar burlar o sistema de Palavrao.')
			selfSay('exevo gran mas vis')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'vsf') and focus == cid then
			selfSay('Usuario Alertado verbalmente por tentar burlar o sistema de Palavrao.')
			selfSay('exevo gran mas vis')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'porra') and focus == cid then
			selfSay('Usuario Alertado verbalmente por tentar burlar o sistema de Palavrao.')
			selfSay('exevo gran mas vis')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'buceta') and focus == cid then
			selfSay('Usuario Alertado verbalmente por tentar burlar o sistema de Palavrao.')
			selfSay('exevo gran mas vis')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'caralho') and focus == cid then
			selfSay('Usuario Alertado verbalmente por tentar burlar o sistema de Palavrao.')
			selfSay('exevo gran mas vis')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'cu') and focus == cid then
			selfSay('Usuario Alertado verbalmente por tentar burlar o sistema de Palavrao.')
			selfSay('exevo gran mas vis')
			talk_star = os.clock()
 	elseif msgcontains(msg, 'otserv brasil lixo') and focus == cid then
			selfSay('/kick ' .. creatureGetName(cid) .. '')
			selfSay('Usuario Kickado.')
			focus = 0
			talk_start = 0
 	elseif msgcontains(msg, 'gay') and focus == cid then
			selfSay('/ban ' .. creatureGetName(cid) .. '')
			selfSay('Usuario Banido.')
			focus = 0
			talk_start = 0

		if string.find(msg, '(%a*)flw(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
			selfSay('Mais ja? seu [Palavrao Censurado].')
			focus = 0
			talk_start = 0
		end
	end
end


function onCreatureChangeOutfit(creature)

end


function onThink()

 	if (os.clock() - talk_start) > 100 then
 		if focus > 0 then
 			selfSay('Sai fora [Palavrao Censurado].')
 		end
 			focus = 0
 	end
	if focus ~= 0 then
		if getDistanceToCreature(focus) > 5 then
			selfSay('[Palavrao Censurado]')
			focus = 0
		end
	end
end

