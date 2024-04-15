$data merge entity @s {Team:"nocol",Fire:20,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,Tame:1b,Tags:["body","shifter","$(shifter)"],CustomName:'{"translate":"aot.titan.$(shifter)"}',Health:1024f,Attributes:[{Name:generic.max_health,Base:1024},{Name:generic.movement_speed,Base:$(walk_speed)},{Name:generic.jump_strength,Base:$(jump)},{Name:generic.step_height,Base:$(step_height)},{Name:generic.scale,Base:$(scale_vehicle)}],SaddleItem:{id:"minecraft:saddle",Count:1b,components:{"custom_model_data":1,"item_name":'{"text":"Splashart","italic":false}',"custom_data":{"atk_shifter":1b}}},ArmorItem:{}}

$function snc:shifters/mobs/$(shifter)/spawn

$scoreboard players set @s $(shifter)_vars 20

$ride @p[scores={$(shifter)_vars=1},tag=transform,limit=1] mount @s
$ride @e[tag=aj.$(shifter).root,limit=1,sort=nearest] mount @s