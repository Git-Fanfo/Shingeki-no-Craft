execute if biome ~ ~ ~ desert run tag @s[tag=village] add desert
execute if biome ~ ~ ~ #minecraft:is_taiga run tag @s[tag=village] add taiga
execute if biome ~ ~ ~ #minecraft:is_forest run tag @s[tag=village] add forest
execute if biome ~ ~ ~ #minecraft:is_hill run tag @s[tag=village] add hill

tellraw @s[type=player] [{"translate":"A new"}," ",{"translate":"Village","color":"gold"}," ",{"translate":"has been founded!"}]