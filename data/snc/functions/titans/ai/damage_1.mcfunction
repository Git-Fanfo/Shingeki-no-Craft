effect clear @s levitation
$damage @s $(dmg_1) mob_attack by @e[tag=ai,tag=$(tag),sort=nearest,limit=1]
$particle minecraft:block minecraft:redstone_block ^ ^1.5 ^.5 0 0 0 1 $(dmg_1)
$particle minecraft:block minecraft:redstone_block ^ ^1.5 ^.5 0 0 0 1 $(dmg_1)
$particle minecraft:block minecraft:redstone_block ^ ^1.5 ^.5 0 0 0 1 $(dmg_1)
$particle minecraft:block minecraft:pink_terracotta ^ ^1.5 ^.5 0 0 0 1 $(dmg_1)
$particle minecraft:block minecraft:pink_terracotta ^ ^1.5 ^.5 0 0 0 1 $(dmg_1)
tag @s remove wrap