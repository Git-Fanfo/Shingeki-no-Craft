function snc:shifters/mobs/colossal/action/explosion/check_terrain

# 1 is for ground, 2 is for explosion
execute if score terrain colossal_vars matches ..5 run title @s actionbar ["",{"text":"> ","bold":true,"color":"dark_red"},{"translate":"aot.ability.ground","bold":true,"color":"gray"},{"text":" <","bold":true,"color":"dark_red"}]
execute if score terrain colossal_vars matches ..5 run scoreboard players set state_sp colossal_vars 1

execute if score terrain colossal_vars matches 6.. run title @s actionbar ["",{"text":"> ","bold":true,"color":"dark_red"},{"translate":"aot.ability.nuke","bold":true,"color":"gray"},{"text":" <","bold":true,"color":"dark_red"}]
execute if score terrain colossal_vars matches 6.. run scoreboard players set state_sp colossal_vars 2