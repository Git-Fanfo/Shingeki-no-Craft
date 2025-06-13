execute on vehicle at @s rotated ~ 0 run function snc:shifters/mobs/jaw/action/movement/check_wall
execute if score $wall jaw_vars matches 1..3 run scoreboard players set state jaw_vars 5
#tellraw @a {"score":{"name":"$wall","objective":"jaw_vars"}}

execute if score state jaw_vars matches 6 if score $air jaw_vars matches 0 run function snc:shifters/mobs/jaw/animate/jump_end