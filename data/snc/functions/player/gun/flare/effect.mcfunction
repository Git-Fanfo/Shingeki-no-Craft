execute unless score @s projectile matches 0.. run scoreboard players set @s projectile 0
scoreboard players add @s projectile 1

execute if entity @s[tag=red] run summon area_effect_cloud ~ ~ ~ {Duration:250,Tags:["flare","red"]}
execute if entity @s[tag=green] run summon area_effect_cloud ~ ~ ~ {Duration:250,Tags:["flare","green"]}
execute if entity @s[tag=black] run summon area_effect_cloud ~ ~ ~ {Duration:250,Tags:["flare","black"]}
execute if entity @s[tag=purple] run summon area_effect_cloud ~ ~ ~ {Duration:250,Tags:["flare","purple"]}
execute if entity @s[tag=blue] run summon area_effect_cloud ~ ~ ~ {Duration:250,Tags:["flare","blue"]}
execute if entity @s[tag=yellow] run summon area_effect_cloud ~ ~ ~ {Duration:250,Tags:["flare","yellow"]}

execute if score @s projectile matches 70 run kill

