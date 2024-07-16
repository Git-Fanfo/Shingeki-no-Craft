kill

summon firework_rocket ~ ~ ~ {Owner:[I;1,1,1,1],Tags:["snc.projectile","snc.break.hardening","snc.canon"],LifeTime:1,FireworksItem:{id:"minecraft:arrow",count:1,components:{"minecraft:custom_model_data":1,"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;6498833]},{shape:"star",colors:[I;4665906]}]}}}}
# Get the UUID from the player that shoot the projectile
data modify entity @e[type=firework_rocket,sort=nearest,limit=1] Owner set from entity @s item.components."minecraft:profile".id

#execute if score $pure_destroy config matches 1 run fill ~1 ~-1 ~ ~-1 ~-1 ~ air destroy
#execute if score $pure_destroy config matches 1 run fill ~ ~ ~ ~ ~-2 ~ air destroy
#execute if score $pure_destroy config matches 1 run fill ~ ~-1 ~1 ~ ~-1 ~-1 air destroy

playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 4 1
playsound minecraft:item.wolf_armor.repair master @a ~ ~ ~ 4 .1
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 4 1
particle campfire_cosy_smoke ~ ~ ~ 1.3 1.3 1.3 .03 80 force