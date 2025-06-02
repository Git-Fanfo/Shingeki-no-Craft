execute if score @s snc.time matches 1 run function snc:logic/manual/init
execute if score @s snc.time matches 3 run function snc:logic/broadcast/creative

execute if score @s snc.time matches 6 run playsound minecraft:music_disc.creator_music_box voice @s ~ ~ ~ 8 1 1
execute if score @s snc.time matches 6 run title @s times 0s 30s 2s
execute if score @s snc.time matches 6 run title @s actionbar [{"translate":"aot.record.nowPlaying", "color":"green"},"Main Theme"]
execute if score @s snc.time matches 8 run stopsound @s
execute if score @s snc.time matches 8 run playsound minecraft:snc.music.intro
execute if score @s snc.time matches 9 run stopsound @s music

execute if score @s snc.time matches 35 run title @s times 50 140 20
execute if score @s snc.time matches 35 run title @s subtitle {"translate":"aot","color":"dark_red"}
execute if score @s snc.time matches 35 run title @s title {"text":"\uE003"}
execute if score @s snc.time matches 35 run playsound minecraft:ambient.nether_wastes.mood master @s ~ ~ ~ 8 .1
execute if score @s snc.time matches 35 run playsound minecraft:ambient.nether_wastes.mood master @s ~ ~ ~ 8 .1
execute if score @s snc.time matches 37 run advancement grant @s only snc:root

execute if score @s snc.time matches 91 run function snc:titans/spawn/wave

execute if score @s snc.time matches 179 run function snc:logic/broadcast/support

scoreboard players add @s snc.time 1