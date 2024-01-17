effect give @s resistance 1 255 true
execute if score @s push_back matches 1 rotated ~ 0 run function snc:logic/push/back/1
execute if score @s push_back matches 2 unless predicate snc:is_riding rotated ~ 0 run function snc:logic/push/back/2
execute if score @s push_back matches 2 if predicate snc:is_riding on vehicle at @s rotated ~ 0 positioned ^ ^-.2 ^-.2 run function snc:logic/push/back/2
#execute if score @s push_back matches 2 rotated ~ 0 run function snc:logic/push/back/2
execute if score @s push_back matches 2 unless predicate snc:is_riding rotated ~ 0 run function snc:logic/push/back/2
execute if score @s push_back matches 2 if predicate snc:is_riding on vehicle at @s rotated ~ 0 positioned ^ ^-.2 ^-.2 run function snc:logic/push/back/2
#execute if score @s push_back matches 3 rotated ~ 0 run function snc:logic/push/back/3
execute if score @s push_back matches 3 unless predicate snc:is_riding rotated ~ 0 run function snc:logic/push/back/3
execute if score @s push_back matches 3 if predicate snc:is_riding on vehicle at @s rotated ~ 0 positioned ^ ^-.2 ^-.2 run function snc:logic/push/back/3

scoreboard players reset @s push_back