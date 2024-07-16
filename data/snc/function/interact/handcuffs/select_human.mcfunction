execute if entity @s[type=villager] run function snc:interact/handcuffs/villager
execute if entity @s[type=player] run function snc:interact/handcuffs/player/main

execute summon chest_minecart run function snc:interact/handcuffs/key/set
scoreboard players operation @s snc.lock = #id snc.key