$data merge entity @s {NoAI:1b,Team:"nocol",Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,Tame:1b,Tags:["body","shifter","$(shifter)"],CustomName:'{"translate":"aot.titan.$(shifter)"}',Health:1024f,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:20,show_particles:0b}],attributes:[{id:"minecraft:generic.max_health",base:1024},{id:"minecraft:generic.movement_speed",base:$(walk_speed)},{id:"minecraft:generic.jump_strength",base:$(jump)},{id:"minecraft:generic.safe_fall_distance",base:13d},{id:"minecraft:generic.step_height",base:$(step_height)},{id:"minecraft:generic.scale",base:$(scale_vehicle)},{id:"minecraft:generic.knockback_resistance",base:1}],SaddleItem:{id:"minecraft:saddle",Count:1b,components:{"custom_model_data":1,"hide_tooltip":{},"custom_data":{"atk_shifter":1b}}},ArmorItem:{}}

$function snc:shifters/mobs/$(shifter)/spawn

$scoreboard players set @s $(shifter)_vars 20

$ride @p[scores={$(shifter)_vars=1},tag=transform,limit=1] mount @s

$ride @n[tag=aj.$(shifter).root] mount @s
execute on passengers unless entity @s[type=player] run tp @s ~ ~ ~ ~ 0
