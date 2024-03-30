execute if score @s snc.time matches 1 run function snc:logic/manual/init

execute if score @s snc.time matches 5 run function snc:logic/broadcast/creative

execute if score @s snc.time matches 10 run title @s times 20 240 10
execute if score @s snc.time matches 10 run title @s subtitle {"translate":"aot","color":"dark_red"}
execute if score @s snc.time matches 10 run title @s title {"text":"\uE003"}
execute if score @s snc.time matches 10 run playsound minecraft:ambient.nether_wastes.mood master @s ~ ~ ~ 1 .1

execute if score @s snc.time matches 10 run advancement grant @s only snc:root

execute if score @s snc.time matches 59 run function snc:logic/broadcast/support

scoreboard players add @s snc.time 1