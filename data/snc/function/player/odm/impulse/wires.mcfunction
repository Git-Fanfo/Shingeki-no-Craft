execute if score @s snc.odm_gas matches 19.. run playsound minecraft:aot.impulse player @a ~ ~ ~ 2 1.1
execute if score @s snc.odm_gas matches 17..18 run playsound minecraft:aot.impulse player @a ~ ~ ~ 2 1.08
execute if score @s snc.odm_gas matches 15..16 run playsound minecraft:aot.impulse player @a ~ ~ ~ 2 1.06
execute if score @s snc.odm_gas matches 13..14 run playsound minecraft:aot.impulse player @a ~ ~ ~ 2 1.04
execute if score @s snc.odm_gas matches 11..12 run playsound minecraft:aot.impulse player @a ~ ~ ~ 2 1.02
execute if score @s snc.odm_gas matches 9..10 run playsound minecraft:aot.impulse player @a ~ ~ ~ 2 1.0
execute if score @s snc.odm_gas matches 7..8 run playsound minecraft:aot.impulse player @a ~ ~ ~ 2 0.97
execute if score @s snc.odm_gas matches 5..6 run playsound minecraft:aot.impulse player @a ~ ~ ~ 2 0.94
execute if score @s snc.odm_gas matches 3..4 run playsound minecraft:aot.impulse player @a ~ ~ ~ 2 0.91
execute if score @s snc.odm_gas matches 1..2 run playsound minecraft:aot.impulse player @a ~ ~ ~ 2 0.88

execute if score @s snc.odm_push matches 0..8 run function snc:player/odm/impulse/push {"power":2, "x":"^", "y":"^", "z":"^-1.5"}
execute if score @s snc.odm_push matches 9..18 run function snc:player/odm/impulse/push {"power":3, "x":"^", "y":"^", "z":"^-1.7"}
execute if score @s snc.odm_push matches 19..45 run function snc:player/odm/impulse/push {"power":4, "x":"^", "y":"^", "z":"^-2.2"}
execute if score @s snc.odm_push matches 46.. run function snc:player/odm/impulse/push {"power":5, "x":"^", "y":"^", "z":"^-2.5"}

return 1