setblock ~ ~ ~ farmland
$setblock ~ ~1 ~ $(crop)
$clear @s $(seeds) 1
playsound minecraft:block.gravel.place block @a ~ ~ ~ 2 1
$scoreboard players remove $energy $(shifter)_vars 3