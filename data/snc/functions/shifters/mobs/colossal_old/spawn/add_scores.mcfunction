execute unless score state_sp colossal_vars matches 1 run data merge entity @s {Fire:20,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,Tame:1b,Tags:["body","shifter","colossal"],CustomName:'{"translate":"aot.titan.colossal"}',ActiveEffects:[{Id:11,Amplifier:5b,Duration:2147483647,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0.26},{Name:horse.jump_strength,Base:0}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{}}

execute if score state_sp colossal_vars matches 1 run data merge entity @s {Fire:20,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,Tame:1b,Tags:["body","shifter","colossal"],CustomName:'{"translate":"aot.titan.colossal"}',ActiveEffects:[{Id:11,Amplifier:5b,Duration:2147483647,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0},{Name:horse.jump_strength,Base:0}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{}}

summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Tags:["pivot","shifter","colossal"],Passengers:[{id:"minecraft:item_display",item_display:"head",Tags:["model","shifter","colossal"],item:{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:74}}}]}

summon slime ~ ~ ~ {NoAI:1b,Silent:1b,Size:35,Tags:["collision","shifter","colossal","1"]}
execute unless score state_sp colossal_vars matches 1 run summon slime ~ ~ ~ {NoAI:1b,Silent:1b,Size:35,Tags:["collision","shifter","colossal","2"]}

ride @p[scores={colossal_vars=1},tag=transform,limit=1] mount @s
ride @e[tag=pivot,tag=colossal,limit=1,sort=nearest] mount @s

execute unless score state_sp colossal_vars matches 1 

scoreboard players set idle colossal_vars 0
#When borns set the frame nmber here: Ex action -> 64
scoreboard players set action colossal_vars 55
scoreboard players set walk colossal_vars 0
scoreboard players set height colossal_vars 1