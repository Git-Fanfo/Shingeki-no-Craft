advancement grant @p[distance=0..5, scores={attack_vars=1}] only snc:koniglich
execute if entity @s[type=villager] rotated ~ 0 run particle dust 0.78 0.988 0.988 1 ^ ^.5 ^-.12 .1 .5 .1 1 10 force @p[scores={attack_vars=1},advancements={snc:koniglich=true}]
execute if entity @s[type=player] rotated ~ 0 run particle dust 0.78 0.988 0.988 1 ^ ^1 ^-.5 .2 .2 .2 1 1 force @p[scores={attack_vars=1},advancements={snc:koniglich=true}]
execute if entity @s[tag=hurtbox] rotated ~ 0 run particle dust 0.78 0.988 0.988 1 ~ ~ ~ .5 .5 .5 1 10 force @p[scores={attack_vars=1},advancements={snc:koniglich=true}]