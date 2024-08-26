effect clear @s levitation
playsound minecraft:aot.human.gore hostile @a
$damage @s $(dmg_1) mob_attack by @n[tag=$(tag)]
$particle minecraft:block{block_state:"minecraft:redstone_block"} ^ ^ ^.5 0 0 0 1 $(dmg_1)
$particle minecraft:block{block_state:"minecraft:redstone_block"} ^ ^ ^.5 0 0 0 1 $(dmg_1)
$particle minecraft:block{block_state:"minecraft:redstone_block"} ^ ^ ^.5 0 0 0 1 $(dmg_1)
$particle minecraft:block{block_state:"minecraft:pink_terracotta"} ^ ^ ^.5 0 0 0 1 $(dmg_1)
$particle minecraft:block{block_state:"minecraft:pink_terracotta"} ^ ^ ^.5 0 0 0 1 $(dmg_1)
tag @s remove snc.grabbed