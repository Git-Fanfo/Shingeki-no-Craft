$scoreboard players remove $op.hardening $(shifter)_vars 1
$execute if score $op.hardening $(shifter)_vars matches 1.. run playsound aot.shifters.armor.harden.hit player @a ~ ~ ~ 6 1
$execute if score $op.hardening $(shifter)_vars matches ..0 run playsound aot.shifters.armor.harden.break player @a ~ ~ ~ 6 1

execute anchored eyes run particle minecraft:block{block_state:"light_blue_glazed_terracotta"} ^ ^-2 ^ .7 .7 .7 1 100 force
execute anchored eyes run particle minecraft:block{block_state:"raw_gold_block"} ^ ^-2 ^ .8 .8 .8 1 600 force