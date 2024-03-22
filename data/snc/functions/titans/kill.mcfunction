summon experience_orb ~.2 ~4 ~ {Value:7}
summon experience_orb ~ ~4 ~ {Value:3}
summon experience_orb ~ ~4 ~.2 {Value:5}

particle minecraft:cloud ~ ~4 ~ 2 2 2 .2 500 force
playsound minecraft:aot.steam player @a ~ ~4 ~ 2 1
effect clear @s water_breathing
tag @p[tag=wrap,distance=..8] remove wrap

execute as @p[distance=0..6] if entity @s[advancements={snc:shifters/peng=false}] at @s run loot spawn ~ ~ ~ loot give @s loot snc:peng_diary

# kill titan
function snc:titans/ai/kill