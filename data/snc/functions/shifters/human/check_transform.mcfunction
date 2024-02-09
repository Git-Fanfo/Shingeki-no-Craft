damage @s 6 player_attack by @s
playsound minecraft:entity.player.hurt_sweet_berry_bush player @s ~ ~ ~ 1 .9

$execute as @s[tag=!transform] if score $energy $(shifter)_vars matches 720.. run function snc:shifters/human/transform {"shifter":$(shifter),"name":"$(name)"}