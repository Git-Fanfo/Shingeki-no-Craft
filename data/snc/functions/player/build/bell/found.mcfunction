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
summon text_display ~ ~4 ~ {CustomNameVisible:1b,width:2f,height:2f,billboard:"vertical",Tags:["village"],CustomName:'{"text":"Village","color":"gold"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}

execute as @e[distance=..30] run function snc:player/build/bell/spawn