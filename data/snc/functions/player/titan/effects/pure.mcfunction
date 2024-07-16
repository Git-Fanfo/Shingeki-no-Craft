effect give @s invisibility 2 0 true
effect give @s resistance 10 127 true
#effect give @s blindness 2 0 true
title @s title {"text":"\uE000"}
title @s subtitle ""
title @s times 0 20 5

title @s actionbar [{"translate": "aot.pure6"}," ",{"keybind":"key.sneak"}," ",{"translate": "aot.pure7"}]
execute unless predicate snc:is_riding run function snc:player/titan/kill
team join titan

execute as @s facing entity @e[type=villager] eyes run particle minecraft:flame ^ ^1.5 ^1 0 0 0 100000 1 force @s
execute as @s facing entity @a[distance=2..] eyes run particle minecraft:flame ^ ^1.5 ^1 0 0 0 100000 1 force @s