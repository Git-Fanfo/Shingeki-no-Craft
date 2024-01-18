data merge entity @s {Fire:20,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,Tame:1b,Tags:["body","shifter","cart"],CustomName:'{"translate":"aot.titan.cart"}',ActiveEffects:[{Id:11,Amplifier:5b,Duration:2147483647,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0.55},{Name:horse.jump_strength,Base:1.2}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{}}

summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Tags:["pivot","shifter","cart"],Passengers:[{id:"minecraft:item_display",item_display:"head",Tags:["model","shifter","cart"],item:{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:37}}}]}

summon slime ~ ~ ~ {NoAI:1b,Silent:1b,Size:6,Tags:["collision","shifter","cart"]}

ride @a[scores={cart_vars=1},tag=transform,limit=1] mount @s
ride @e[tag=pivot,tag=cart,limit=1,sort=nearest] mount @s

scoreboard players set idle cart_vars 0
#When borns set the frame nmber here: Ex  cart_action -> 64
scoreboard players set action cart_vars 40
scoreboard players set walk cart_vars 0
scoreboard players set height cart_vars 1