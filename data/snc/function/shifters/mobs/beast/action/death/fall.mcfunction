# Tp player to neck
execute as @p[scores={beast_vars=1},tag=!transform,distance=..30] rotated ~ 0 run tp ^ ^11 ^-1

# Start riding armor_stand instead of horse
execute on vehicle run kill
ride @s dismount

execute store result score @s random run random value 1..99
execute if score @s random matches 1 run summon armor_stand ^ ^ ^ {DisabledSlots:4144959,Invisible:1b,Tags:["beast","dead","shifter"],Pose:{Head:[20f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",count:1b,components:{"item_model":"shifters/beast/bite/meat/1"}}],active_effects:[{id:"minecraft:levitation",amplifier:0,duration:10000}]}
execute unless score @s random matches 1 run summon armor_stand ^ ^ ^ {DisabledSlots:4144959,Invisible:1b,Tags:["beast","dead","shifter"],Pose:{Head:[20f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",count:1b,components:{"item_model":"shifters/beast/bite/meat/1"}}],active_effects:[{id:"minecraft:slow_falling",amplifier:0,duration:2}]}
ride @s mount @n[type=armor_stand,tag=dead]
execute on vehicle run rotate @s ~ 0