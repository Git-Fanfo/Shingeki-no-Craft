fill ^7 ^7 ^7 ^-7 ^-7 ^-7 smooth_basalt replace #snc:tangible
execute if entity @s[tag=snc.rad] run fillbiome ~8 ~-10 ~8 ~-7 ~15 ~-7 snc:radiation
execute if entity @s[tag=snc.rad] positioned ~ ~19 ~ run fillbiome ~16 ~19 ~16 ~-16 ~-10 ~-16 snc:radiation
execute if entity @s[tag=snc.rad] positioned ~16 ~ ~ run fillbiome ~16 ~19 ~16 ~-16 ~-10 ~-16 snc:radiation
execute if entity @s[tag=snc.rad] positioned ~-16 ~ ~ run fillbiome ~16 ~19 ~16 ~-16 ~-10 ~-16 snc:radiation
execute if entity @s[tag=snc.rad] positioned ~ ~ ~16 run fillbiome ~16 ~19 ~16 ~-16 ~-10 ~-16 snc:radiation
execute if entity @s[tag=snc.rad] positioned ~ ~ ~-16 run fillbiome ~16 ~19 ~16 ~-16 ~-10 ~-16 snc:radiation
kill