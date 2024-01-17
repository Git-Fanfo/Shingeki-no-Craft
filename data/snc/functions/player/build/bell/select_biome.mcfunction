execute if entity @s[tag=desert] run function snc:player/build/bell/desert
execute if entity @s[tag=taiga] run function snc:player/build/bell/taiga
execute if entity @s[tag=forest] run function snc:player/build/bell/forest
execute if entity @s[tag=hill] run function snc:player/build/bell/hill
execute if entity @s[tag=!desert, tag=!taiga, tag=!forest, tag=!hill] run function snc:player/build/bell/plains

tellraw @a[distance=..5] [{"selector":"@s"},{"translate":" has been destroyed"}]
kill