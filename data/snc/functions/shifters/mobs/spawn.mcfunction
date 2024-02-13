$data merge entity @s {Fire:20,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,Tame:1b,Tags:["body","shifter","$(shifter)"],CustomName:'{"translate":"aot.titan.$(shifter)"}',Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:$(walk_speed)},{Name:generic.jump_strength,Base:$(jump)},{Name:generic.step_height,Base:$(step_height)},{Name:generic.scale,Base:$(scale_vehicle)}],SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Splashart","italic":false}'}}},ArmorItem:{}}
$function snc:shifters/mobs/$(shifter)/spawn

$ride @p[scores={$(shifter)_vars=1},tag=transform,limit=1] mount @s
$ride @e[tag=aj.$(shifter).root,limit=1,sort=nearest] mount @s