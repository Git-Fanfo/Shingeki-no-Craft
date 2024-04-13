setblock ~1 ~ ~ spruce_log
setblock ~1 ~ ~1 polished_andesite_stairs
setblock ~2 ~ ~1 polished_andesite_stairs
setblock ~1 ~ ~-1 polished_andesite_stairs[facing=south]
setblock ~2 ~ ~-1 polished_andesite_stairs[facing=south]
setblock ~2 ~ ~ polished_andesite_stairs[facing=west]
setblock ~-1 ~ ~ spruce_log
setblock ~-1 ~ ~1 polished_andesite_stairs
setblock ~-2 ~ ~1 polished_andesite_stairs
setblock ~-1 ~ ~-1 polished_andesite_stairs[facing=south]
setblock ~-2 ~ ~-1 polished_andesite_stairs[facing=south]
setblock ~-2 ~ ~ polished_andesite_stairs[facing=east]
setblock ~1 ~1 ~ spruce_log
setblock ~-1 ~1 ~ spruce_log
setblock ~1 ~2 ~ spruce_log
setblock ~-1 ~2 ~ spruce_log
setblock ~1 ~3 ~ brick_wall
setblock ~-1 ~3 ~ brick_wall
setblock ~1 ~4 ~ campfire
setblock ~-1 ~4 ~ campfire
setblock ~ ~2 ~ bell[attachment=ceiling]
setblock ~ ~3 ~ spruce_wood

## Summon
execute positioned ~ ~4 ~ summon text_display run function snc:player/build/bell/rename/init

execute as @e[distance=..30] run function snc:player/build/bell/spawn