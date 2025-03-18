execute if score action colossal_vars matches 74 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action colossal_vars matches 74 run function snc:titans/volt/spawn
execute if score action colossal_vars matches 74 run playsound minecraft:snc.shifters.lightning master @a ~ ~ ~ 24

execute if score action colossal_vars matches 70 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action colossal_vars matches 70 run function snc:titans/volt/spawn

execute if score action colossal_vars matches 64 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action colossal_vars matches 64 run function snc:titans/volt/spawn

# Full
execute if score action colossal_vars matches 74 run data merge entity @s {view_range:50f,item:{id:'minecraft:turtle_scute',Count:1b,components:{"item_model":"shifters/colossal/die/1"}}, start_interpolation:0,interpolation_duration:54,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[22.15f,22.15f,22.15f]}}

# Health
execute if score action colossal_vars matches 74 on vehicle run effect give @s levitation 5 15 true
execute if score action colossal_vars matches 56 run effect give @a[scores={colossal_vars=1}] absorption 20 9 true
execute if score action colossal_vars matches 36 run effect give @a[scores={colossal_vars=1}] absorption 20 12 true
execute if score action colossal_vars matches 28 run effect give @a[scores={colossal_vars=1}] absorption 20 14 true
execute if score action colossal_vars matches 1 run effect give @a[scores={colossal_vars=1}] absorption 20 17 true

execute if score action colossal_vars matches 1 on vehicle run attribute @s minecraft:scale base set 12
execute if score action colossal_vars matches 1 run execute as @a[scores={colossal_vars=1}] run function snc:shifters/mobs/colossal/abilities/give
execute if score action colossal_vars matches 1 run scoreboard players set consume colossal_vars 20
execute if score action colossal_vars matches 1 run scoreboard players set state colossal_vars 3

return 1