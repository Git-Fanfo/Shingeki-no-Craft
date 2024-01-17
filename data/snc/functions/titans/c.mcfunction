## Speed
# Slow: 0.4
# Medium: 0.5
# Fast: 0.6
## Damage
# Low: 6
# Medium: 8
# High: 10

summon zombie_villager ~ ~ ~ {Fire:20,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["ai","titan","c"],Passengers:[{id:"minecraft:item_display",view_range:10f,width:5f,height:5f,item_display:"thirdperson_righthand",Tags:["model","titan","c"],Passengers:[{id:"minecraft:slime",Fire:20,Silent:1b,Invulnerable:1b,NoAI:1b,Size:3,Tags:["collision","titan","c"],Passengers:[{id:"minecraft:slime",Fire:20,Silent:1b,Invulnerable:1b,NoAI:1b,Size:4,Tags:["collision","titan","c"],Passengers:[{id:"minecraft:slime",Fire:20,Silent:1b,NoAI:1b,Size:2,Tags:["hurtbox","titan","c"]}]}]}],item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:217}}}],CustomName:'{"text":"Titan"}',ArmorItems:[{},{},{},{id:'minecraft:arrow',Count:1b,tag:{CustomModelData:1}}],Attributes:[{Name:generic.follow_range,Base:200},{Name:generic.movement_speed,Base:0.6},{Name:generic.attack_damage,Base:8}]}

## Check if this is newer
#summon zombie_villager ~ ~ ~ {Fire:20,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["ai","titan","c"],Passengers:[{id:"minecraft:item_display",view_range:10f,width:5f,height:65f,item_display:"thirdperson_righthand",Tags:["model","titan","c"],Passengers:[{id:"minecraft:slime",Fire:20,Silent:1b,Invulnerable:1b,NoAI:1b,Size:45,Tags:["collision","titan","c"],Passengers:[{id:"minecraft:slime",Fire:20,Silent:1b,Invulnerable:1b,NoAI:1b,Size:50,Tags:["collision","titan","c"],Passengers:[{id:"minecraft:slime",Fire:20,Silent:1b,Invulnerable:1b,NoAI:1b,Size:45,Tags:["collision","titan","c"],Passengers:[{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Fire:20,ShowArms:1b,Tags:["collision","titan","c"],Pose:{LeftArm:[-90f,0f,0f]},Passengers:[{id:"minecraft:slime",Fire:20,Silent:1b,NoAI:1b,Size:7,Tags:["hurtbox","titan","c"]}],HandItems:[{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:16}}]}]}]}]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[22f,22f,22f]},item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:217}}}],CustomName:'{"text":"Titan"}',ArmorItems:[{},{},{},{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}],Attributes:[{Name:generic.follow_range,Base:200},{Name:generic.movement_speed,Base:0.6},{Name:generic.attack_damage,Base:8}]}

execute if score #lightning config matches 1 run function snc:titans/volt/spawn