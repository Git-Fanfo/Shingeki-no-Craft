# Dismount player from everything
ride @s dismount
# Mount vehicle, direct reference
ride @s mount 0000007f-0000-007f-0000-007f00000002
effect give @s minecraft:slowness infinite 2 true
execute on vehicle run effect give @s minecraft:slowness infinite 6 true
execute if score $form colossal_vars matches 1 on vehicle run attribute @s minecraft:scale base set 1
execute if score $form colossal_vars matches 1 run scoreboard players set state colossal_vars 13
execute if score $form colossal_vars matches 1 run scoreboard players set action colossal_vars 11
scoreboard players set $form colossal_vars 0

scoreboard players set $moving colossal_vars -1

function snc:shifters/mobs/colossal/abilities/give