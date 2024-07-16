## Available ID's

execute as @s[scores={manual=9}] run function snc:api/config
execute as @s[scores={manual=11}] run function snc:logic/manual/shifters/attack
execute as @s[scores={manual=12}] run function snc:logic/manual/shifters/beast
execute as @s[scores={manual=13}] run function snc:logic/manual/shifters/cart
execute as @s[scores={manual=14}] run function snc:logic/manual/shifters/colossal
execute as @s[scores={manual=15}] run function snc:logic/manual/shifters/armor

execute if score @s manual matches 11..20 run function snc:api/respawn_shifters

scoreboard players set @s manual 0