effect clear @s levitation
$damage @s $(dmg_2) mob_attack by @e[tag=ai,tag=$(tag),sort=nearest,limit=1]
$particle minecraft:block{block_state:"minecraft:redstone_block"} ^ ^1.5 ^.5 0 0 0 1 $(dmg_2)
$particle minecraft:block{block_state:"minecraft:redstone_block"} ^ ^1.5 ^.5 0 0 0 1 $(dmg_2)
$particle minecraft:block{block_state:"minecraft:redstone_block"} ^ ^1.5 ^.5 0 0 0 1 $(dmg_2)
$particle minecraft:block{block_state:"minecraft:pink_terracotta"} ^ ^1.5 ^.5 0 0 0 1 $(dmg_2)
$particle minecraft:block{block_state:"minecraft:pink_terracotta"} ^ ^1.5 ^.5 0 0 0 1 $(dmg_2)

tag @s remove wrap