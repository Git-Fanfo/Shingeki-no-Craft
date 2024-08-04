playsound minecraft:aot.impulse player @a ~ ~ ~ 2 1

execute if score @s snc.odm_push matches 0..10 run function snc:player/odm/impulse/push {"power":2, "x":"^", "y":"^", "z":"^-2"}
execute if score @s snc.odm_push matches 11..22 run function snc:player/odm/impulse/push {"power":3, "x":"^", "y":"^", "z":"^-2.1"}
execute if score @s snc.odm_push matches 23..45 run function snc:player/odm/impulse/push {"power":4, "x":"^", "y":"^", "z":"^-2.2"}
execute if score @s snc.odm_push matches 46.. run function snc:player/odm/impulse/push {"power":5, "x":"^", "y":"^", "z":"^-2.5"}

return 1