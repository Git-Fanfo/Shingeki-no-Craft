## Speed
# Slow: 0.4
# Medium: 0.5
# Fast: 0.6
## Damage
# Low: 6
# Medium: 8
# High: 10

summon zombie_villager ~ ~ ~ {Fire:20,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["ai","titan","c"],Passengers:[{id:"minecraft:item_display",view_range:10f,width:5f,height:5f,item_display:"thirdperson_righthand",Tags:["model","titan","c"],Passengers:[{id:"minecraft:slime",Fire:20,Silent:1b,Invulnerable:1b,NoAI:1b,Size:3,Tags:["collision","titan","c"],Passengers:[{id:"minecraft:slime",Fire:20,Silent:1b,Invulnerable:1b,NoAI:1b,Size:4,Tags:["collision","titan","c"],Passengers:[{id:"minecraft:slime",Fire:20,Silent:1b,NoAI:1b,Size:2,Tags:["hurtbox","titan","c"]}]}]}],item:{id:"minecraft:flint",Count:1b,components:{"custom_model_data":217}}}],CustomName:'{"text":"Titan"}',ArmorItems:[{},{},{},{id:'minecraft:arrow',Count:1b,components:{"custom_model_data":1}}],attributes:[{id:"generic.follow_range",base:200},{id:"generic.movement_speed",base:0.6},{id:"generic.attack_damage",base:8}]}

execute if score #lightning config matches 1 run function snc:titans/volt/spawn