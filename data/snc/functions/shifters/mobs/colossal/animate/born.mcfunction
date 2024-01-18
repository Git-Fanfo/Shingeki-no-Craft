execute if score action colossal_vars matches 55 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action colossal_vars matches 55 run function snc:titans/volt/spawn
execute if score action colossal_vars matches 55 run playsound minecraft:item.trident.thunder master @a

execute if score action colossal_vars matches 51 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action colossal_vars matches 51 run function snc:titans/volt/spawn
execute if score action colossal_vars matches 51 run playsound minecraft:item.trident.thunder master @a

execute if score action colossal_vars matches 46 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action colossal_vars matches 46 run function snc:titans/volt/spawn
execute if score action colossal_vars matches 46 run playsound minecraft:item.trident.thunder master @a

execute if score action colossal_vars matches 55 run function snc:shifters/mobs/colossal/spawn/explosion

# Full
execute if score action colossal_vars matches 55 unless score state_sp colossal_vars matches 1 run data merge entity @s {view_range:50f,item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:454}}, start_interpolation:0,interpolation_duration:54,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[22.15f,22.15f,22.15f]}}

# Half
execute if score action colossal_vars matches 55 if score state_sp colossal_vars matches 1 run data merge entity @s {view_range:50f,item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:502}}, start_interpolation:0,interpolation_duration:54,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[22.15f,22.15f,22.15f]}}


execute if score action colossal_vars matches ..48 if score state_sp colossal_vars matches 2 run gamerule mobGriefing false

#Health
execute if score action colossal_vars matches 42 run effect give @a[scores={colossal_vars=1}] absorption 20 9 true
execute if score action colossal_vars matches 27 run effect give @a[scores={colossal_vars=1}] absorption 20 12 true
execute if score action colossal_vars matches 15 run effect give @a[scores={colossal_vars=1}] absorption 20 14 true
execute if score action colossal_vars matches 2 run effect give @a[scores={colossal_vars=1}] absorption 20 17 true

execute if score action colossal_vars matches 1 run execute as @a[scores={colossal_vars=1}] run function snc:give/item/colossal/primary
execute if score action colossal_vars matches 1 run scoreboard players set state colossal_vars 3
execute if score action colossal_vars matches 1 run scoreboard players set consume colossal_vars -1