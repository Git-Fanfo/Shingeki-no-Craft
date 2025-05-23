advancement revoke @s only snc:human/npc/ellie
#playsound minecraft:aot.human.interact player @s ~ ~ ~ 1 1
playsound minecraft:entity.wandering_trader.reappeared player @s ~ ~ ~ 1 .85
playsound minecraft:item.armor.equip_elytra player @s ~ ~ ~ 1 1
scoreboard players enable @s messages
execute at @n[tag=snc.ellie] run function snc:logic/quest/ellie/main
