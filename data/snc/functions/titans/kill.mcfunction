summon experience_orb ~.2 ~ ~ {Value:7}
summon experience_orb ~ ~ ~ {Value:3}
summon experience_orb ~ ~ ~.2 {Value:5}

particle minecraft:cloud ~ ~-1 ~ 2 2 2 .2 500 force
playsound minecraft:aot.steam player @a ~ ~ ~ 2 1
effect clear @s water_breathing
tag @p[tag=wrap,distance=..8] remove wrap

execute if predicate snc:chance/40 as @p[distance=0..6,advancements={snc:craft/shifters/injection=false}] at @s run function snc:titans/spawn_notes

# kill titan
function snc:titans/ai/kill