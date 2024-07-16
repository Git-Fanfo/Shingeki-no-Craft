tag @s remove follow
execute on passengers run tellraw @p ["<",{"selector":"@s"},"> ", "I'll stay here then!"]
execute if entity @s[tag=alex] if block ~ ~-1 ~ smithing_table run function snc:player/build/stand/survey
execute if entity @s[tag=bomb] if block ~ ~-1 ~ smithing_table run function snc:player/build/stand/survey
execute if entity @s[tag=ragnaar] if block ~ ~-1 ~ smithing_table run function snc:player/build/stand/survey
execute if entity @s[tag=niflum] if block ~ ~-1 ~ smithing_table run function snc:player/build/stand/survey