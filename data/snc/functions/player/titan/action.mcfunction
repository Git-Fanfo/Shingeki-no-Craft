# execute as @s[predicate=snc:has_kill] run function snc:player/titan/kill
execute as @s[predicate=snc:titan/has_jump] on vehicle run tag @s add jump
execute as @s[predicate=snc:titan/has_sprint] on vehicle run tag @s add sprint
execute as @s[predicate=snc:titan/has_sprint] run effect give @s speed 5 1 true
execute as @s[predicate=snc:titan/has_eat] on vehicle run tag @s add eat
execute as @s[predicate=snc:titan/has_stop] on vehicle run tag @s add stop

execute on vehicle run tag @s add send