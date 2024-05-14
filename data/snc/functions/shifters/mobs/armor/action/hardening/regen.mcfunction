execute on vehicle on passengers if entity @s[type=player] anchored eyes run particle minecraft:block{block_state:"raw_iron_block"} ^ ^-3 ^-2.5 .9 .8 .9 1 600 force
scoreboard players add $op.hardening armor_vars 2
$playsound minecraft:aot.shifters.armor.harden.hit master @a ~ ~ ~ 5 $(pitch)