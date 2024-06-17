## Kill pure titans
effect give @s[tag=hurtbox] water_breathing 1 0 true
## Damage entities
damage @s[tag=!hurtbox] 16 fireworks
## Damage shifters
execute if score @s shifter_vars matches 1.. run damage @s 80 fireworks
## Break Hardening
execute if score @s shifter_vars matches 1.. run function snc:shifters/function/unique {"pre":"scoreboard players remove $op.hardening ","post":"_vars 3"}

execute if items entity @s armor.* *[trim={"material":"minecraft:armor","pattern":"minecraft:armored"}] run playsound aot.shifters.armor.harden.break player @a ~ ~ ~ 5 1.1
execute if items entity @s armor.* *[trim={"material":"minecraft:armor","pattern":"minecraft:armored"}] anchored eyes run particle minecraft:block{block_state:"light_blue_glazed_terracotta"} ^ ^-.5 ^ .1 .4 .1 1 30 force

execute if items entity @s armor.head *[trim={"material":"minecraft:armor","pattern":"minecraft:armored"}] if predicate snc:chance/35 run item modify entity @s armor.head snc:hardening/reset
execute if items entity @s armor.chest *[trim={"material":"minecraft:armor","pattern":"minecraft:armored"}] if predicate snc:chance/35 run item modify entity @s armor.chest snc:hardening/reset
execute if items entity @s armor.legs *[trim={"material":"minecraft:armor","pattern":"minecraft:armored"}] if predicate snc:chance/35 run item modify entity @s armor.legs snc:hardening/reset
execute if items entity @s armor.feet *[trim={"material":"minecraft:armor","pattern":"minecraft:armored"}] if predicate snc:chance/35 run item modify entity @s armor.feet snc:hardening/reset