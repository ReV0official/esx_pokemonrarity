ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

cards = { "bulbasaur", "ivysaur", "charmander", "charmeleon", "squirtle", "wartortle", "caterpie", "metapod", "butterfree", "weedle", "kakuna", "beedrill", "pidgey",
"pidgeotto", "pidgeot", "rattata", "raticate", "spearow", "fearow", "ekans", "arbok", "raichu", "sandshrew", "sandslash", "nidoran", "nidorina", "nidoqueen", "nidorino", "nidoking", "clefairy",
"clefable", "vulpix", "ninetales", "jigglypuff", "wigglytuff", "zubat", "golbat", "oddish", "gloom", "vileplume", "paras", "parasect", "venonat", "venomoth", "diglett", "dugtrio", "meowth", "persian", "psyduck", 
"golduck", "mankey", "primeape", "growlithe", "poliwag", "poliwhirl", "poliwrath", "abra", "kadabra", "alakazam", "machop", "machoke", "machamp", "bellsprout", "weepinbell", "victreebel", "tentacool", 
"tentacruel", "geodude", "graveler", "golem", "ponyta", "rapidash", "slowpoke", "slowbro", "magnemite", "magneton", "farfetchd", "doduo", "dodrio", "seel", "dewgong", "grimer", "muk", "shellder", "cloyster", 
"gastly", "haunter", "onix", "drowzee", "hypno", "krabby", "kingler", "voltorb", "electrode", "exeggcute", "exeggutor", "cubone", "marowak", "hitmonlee", "hitmonchan", "lickitung", "koffing", "weezing", 
"rhyhorn", "rhydon", "chansey", "tangela", "kangaskhan", "horsea", "seadra", "goldeen", "seaking", "staryu", "starmie", "mr. mime", "scyther", "jynx", "electabuzz", "magmar", "pinsir", "tauros", "magikarp", 
 "lapras", "ditto", "eevee", "togepi", "vaporeon", "jolteon", "flareon", "porygon", "omanyte", "omastar", "kabuto", "kabutops", "aerodactyl", "snorlax", "dratini", "dragonair"}

total = #cards

rarecards = { "venusaur","charizard", "pikachu", "arcanine", "gengar", "gyarados", "dragonite", "articuno", "zapdos", "moltres", "mewtwo", "mew"}

total2 = #rarecards


--[[ESX.RegisterUsableItem('boosterpack', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#cards)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
            xPlayer.addInventoryItem(cards[cardToGive])
        end
    end

    xPlayer.removeInventoryItem('boosterpack', 1)
end)]]--

--[[ESX.RegisterUsableItem('boosterPack', function(source) 
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#cards)
    --local cardToGive2 = math.random(1,#cards)
    --local cardToGive3 = math.random(1,#cards)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
     xPlayer.addInventoryItem(cards[cardToGive], 1)
     --xPlayer.addInventoryItem(cards[cardToGive2], 1)
     --xPlayer.addInventoryItem(cards[cardToGive3], 1)
    xPlayer.removeInventoryItem('boosterPack', 1)
end)

ESX.RegisterUsableItem('RarePack', function(source) 
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#rarecards)
    --local cardToGive2 = math.random(1,#cards)
    --local cardToGive3 = math.random(1,#cards)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
     xPlayer.addInventoryItem(rarecards[cardToGive], 1)
     --xPlayer.addInventoryItem(cards[cardToGive2], 1)
     --xPlayer.addInventoryItem(cards[cardToGive3], 1)
    xPlayer.removeInventoryItem('RarePack', 1)
end)--]]

ESX.RegisterUsableItem('boosterPack', function(source) 
    math.randomseed(os.time())
    local luck = math.random(0, 500)
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#cards)
    local cardToGive2 = math.random(1,#rarecards)
    
    if luck >= 0 and luck <= 480 then
        xPlayer.addInventoryItem(cards[cardToGive],1)
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
        xPlayer.removeInventoryItem('boosterPack', 1)
    end
    if luck >= 481 and luck <= 500 then
        xPlayer.addInventoryItem(rarecards[cardToGive2],1)
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a RARE card!'})
        xPlayer.removeInventoryItem('boosterPack', 1)
    end
    --local cardToGive2 = math.random(1,#cards)
    --local cardToGive3 = math.random(1,#cards)
    --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
    -- xPlayer.addInventoryItem(rarecards[cardToGive], 1)
     --xPlayer.addInventoryItem(cards[cardToGive2], 1)
     --xPlayer.addInventoryItem(cards[cardToGive3], 1)
    --xPlayer.removeInventoryItem('TestPack', 1)
end)

ESX.RegisterUsableItem('boosterbox', function(source) 
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#cards)
    local cardToGive2 = math.random(1,#cards)
    local cardToGive3 = math.random(1,#cards)
    local cardToGive4 = math.random(1,#cards)
    local cardToGive5 = math.random(1,#cards)
    local cardToGive6 = math.random(1,#cards)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
     xPlayer.addInventoryItem(cards[cardToGive], 1)
     xPlayer.addInventoryItem(cards[cardToGive2], 1)
     xPlayer.addInventoryItem(cards[cardToGive3], 1)
     xPlayer.addInventoryItem(cards[cardToGive4], 1)
     xPlayer.addInventoryItem(cards[cardToGive5], 1)
     xPlayer.addInventoryItem(cards[cardToGive6], 1)
    xPlayer.removeInventoryItem('boosterbox', 1)
end)

ESX.RegisterUsableItem('boostercrate', function(source) 
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#cards)
    local cardToGive2 = math.random(1,#cards)
    local cardToGive3 = math.random(1,#cards)
    local cardToGive4 = math.random(1,#cards)
    local cardToGive5 = math.random(1,#cards)
    local cardToGive6 = math.random(1,#cards)
    local cardToGive7 = math.random(1,#cards)
    local cardToGive8 = math.random(1,#cards)
    local cardToGive9 = math.random(1,#cards)
    local cardToGive10 = math.random(1,#cards)
    local cardToGive11 = math.random(1,#cards)
    local cardToGive12 = math.random(1,#cards)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
    xPlayer.addInventoryItem(cards[cardToGive], 1)
    xPlayer.addInventoryItem(cards[cardToGive2], 1)
    xPlayer.addInventoryItem(cards[cardToGive3], 1)
    xPlayer.addInventoryItem(cards[cardToGive4], 1)
    xPlayer.addInventoryItem(cards[cardToGive5], 1)
    xPlayer.addInventoryItem(cards[cardToGive6], 1)
    xPlayer.addInventoryItem(cards[cardToGive7], 1)
     xPlayer.addInventoryItem(cards[cardToGive8], 1)
     xPlayer.addInventoryItem(cards[cardToGive9], 1)
     xPlayer.addInventoryItem(cards[cardToGive10], 1)
     xPlayer.addInventoryItem(cards[cardToGive11], 1)
     xPlayer.addInventoryItem(cards[cardToGive12], 1)
    xPlayer.removeInventoryItem('boostercrate', 1)
end)