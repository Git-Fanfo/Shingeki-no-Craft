execute at @s run playsound minecraft:aot.shoot player @a[distance=..8] ~ ~ ~ 1 1
## Effects
# title @s actionbar {"text":"<   >","bold":true,"color":"gold"}
execute rotated ~ 0 positioned ^.5 ^ ^.2 run particle minecraft:cloud ~ ~1 ~ ^ ^ ^2000000 0.0000003 0 force
execute rotated ~ 0 positioned ^-.5 ^ ^.2 run particle minecraft:cloud ~ ~1 ~ ^ ^ ^2000000 0.0000003 0 force

# Save player ID to detect when ground
execute store result score @s id_player run data get entity @s UUID[0]
execute store result score @s id_detect_R run data get entity @s UUID[0]
execute store result score @s id_detect_L run data get entity @s UUID[0]

## O [hook][motion_odm] -> gets shoot and detects when motion_odm dies
## D [rope] -> tps to motion_odm 
## M [shooter] -> tps to player

# Summon hooks
summon snowball ^-1.5 ^.2 ^3 {Tags:["odm","not_mov","motion_odm","projectile"],Passengers:[{id:"minecraft:item_display",NoGravity:1b,Tags:["odm","hook","R"]}],Item:{id:"minecraft:arrow",Count:1b,components:{"custom_model_data":1}}}
summon snowball ^1.5 ^.2 ^3 {Tags:["odm","not_mov", "motion_odm","projectile"],Passengers:[{id:"minecraft:item_display",NoGravity:1b,Tags:["odm","hook","L"]}],Item:{id:"minecraft:arrow",Count:1b,components:{"custom_model_data":1}}}

# Summon ropes
summon bat ^-.3 ^.5 ^ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["odm","rope","R"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.scale",Base:2}]}
summon bat ^.3 ^.5 ^ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["odm","rope","L"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.scale",Base:2}]}

# Summon shooters
summon bat ^-.3 ^1 ^-.3 {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["odm","shooter","R"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.scale",Base:.6}]}
summon bat ^.3 ^1 ^-.3 {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["odm","shooter","L"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.scale",Base:.6}]}

# Save ID hooks and shooters
execute store result score @e[tag=hook,tag=R,sort=nearest,limit=1] id_hook_R run data get entity @s UUID[0]
execute store result score @e[tag=shooter,tag=R,sort=nearest,limit=1] id_shooter_R run data get entity @s UUID[0]
execute store result score @e[tag=hook,tag=L,sort=nearest,limit=1] id_hook_L run data get entity @s UUID[0]
execute store result score @e[tag=shooter,tag=L,sort=nearest,limit=1] id_shooter_L run data get entity @s UUID[0]

# Wrap bats
## execute as @e[tag=rope,type=bat,sort=nearest,limit=2] at @s run data modify entity @s Leash set from entity @e[tag=shooter,sort=nearest,limit=1] {}
execute as @e[tag=rope,type=bat,sort=nearest,limit=2] at @s run data modify entity @s leash.UUID set from entity @e[tag=shooter,sort=nearest,limit=1] UUID


# ODM status -> 1 = threw
scoreboard players set @s odm_state -1
scoreboard players set @s man_cool 14

# Save Rotation to compare
execute store result score @s rot_throw run data get entity @s Rotation[0]

# Reset scan
scoreboard players set @s[scores={using_carrot=1..}] using_carrot 0