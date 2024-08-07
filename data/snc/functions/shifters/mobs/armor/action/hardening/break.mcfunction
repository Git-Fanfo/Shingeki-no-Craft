## Kill pure titans
effect give @s[tag=hurtbox,distance=..6] water_breathing 1 0 true
## Damage entities
damage @s[tag=!hurtbox,distance=..6] 16 fireworks
execute if entity @s[type=player,tag=!transform] run scoreboard players add @s earthquake 6
## Damage shifters
execute if score @s[tag=transform] shifter_vars matches 1.. run damage @s 25 out_of_world by @s
## Break Hardening
execute if score @s[tag=transform] shifter_vars matches 1.. run function snc:shifters/function/unique {"pre":"scoreboard players remove $op.hardening ","post":"_vars 5"}

execute if items entity @s[distance=..6] armor.* *[trim={"material":"minecraft:armor","pattern":"minecraft:armored"}] run playsound aot.shifters.armor.harden.break player @a ~ ~ ~ 5 1.1
execute if items entity @s[distance=..6] armor.* *[trim={"material":"minecraft:armor","pattern":"minecraft:armored"}] anchored eyes run particle minecraft:block{block_state:"light_blue_glazed_terracotta"} ^ ^-.5 ^ .1 .4 .1 1 30 force

execute if items entity @s[distance=..6] armor.head *[trim={"material":"minecraft:armor","pattern":"minecraft:armored"}] if predicate snc:chance/35 run item modify entity @s armor.head snc:hardening/reset
execute if items entity @s[distance=..6] armor.chest *[trim={"material":"minecraft:armor","pattern":"minecraft:armored"}] if predicate snc:chance/35 run item modify entity @s armor.chest snc:hardening/reset
execute if items entity @s[distance=..6] armor.legs *[trim={"material":"minecraft:armor","pattern":"minecraft:armored"}] if predicate snc:chance/35 run item modify entity @s armor.legs snc:hardening/reset
execute if items entity @s[distance=..6] armor.feet *[trim={"material":"minecraft:armor","pattern":"minecraft:armored"}] if predicate snc:chance/35 run item modify entity @s armor.feet snc:hardening/reset