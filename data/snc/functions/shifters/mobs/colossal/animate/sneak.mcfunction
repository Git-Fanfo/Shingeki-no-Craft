ride @s mount @e[type=skeleton_horse,tag=colossal,limit=1,sort=nearest]
effect give @s minecraft:slowness infinite 2 true
execute on vehicle run effect give @s minecraft:slowness infinite 6 true
execute if score $form colossal_vars matches 1 on vehicle run attribute @s minecraft:generic.scale base set 1
execute if score $form colossal_vars matches 1 run scoreboard players set state colossal_vars 13
execute if score $form colossal_vars matches 1 run scoreboard players set action colossal_vars 10
scoreboard players set $form colossal_vars 0