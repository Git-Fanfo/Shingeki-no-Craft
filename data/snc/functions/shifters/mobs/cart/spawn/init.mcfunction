# Save the current position to #posy0
execute store result score #posy0 cart_vars run data get entity @s Pos[1] 1

execute summon skeleton_horse run function snc:shifters/mobs/cart/spawn/add_scores

#bossbar add cart_health {"translate":"aot.titan.cart","color": "light_purple"}
bossbar add cart_health {"text":"\uFFF3"}
bossbar set cart_health color pink
bossbar set cart_health max 48
bossbar set minecraft:cart_health style notched_6

scoreboard players set state cart_vars 100
effect give @s resistance 5 4 true

execute store result score @s gamemode run data get entity @s playerGameType
gamemode survival