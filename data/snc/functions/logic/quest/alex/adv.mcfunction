advancement revoke @s only snc:human/npc/alex
#playsound minecraft:aot.human.interact player @s ~ ~ ~ 1 1
playsound minecraft:entity.wandering_trader.reappeared player @s ~ ~ ~ 1 .85
playsound minecraft:item.armor.equip_elytra player @s ~ ~ ~ 1 1
scoreboard players enable @s messages
execute at @e[tag=alex,sort=nearest,limit=1] run function snc:logic/quest/alex/main
