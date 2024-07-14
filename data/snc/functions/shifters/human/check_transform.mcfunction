execute unless score @s atk matches 256..300 unless predicate snc:player/is_sneaking run damage @s 5 player_attack

tellraw @s[tag=snc.injured] ["","You ",{"text":"can't","bold":true,"color":"dark_red"}," turn into a ",{"text":"Titan","bold":true,"color":"dark_red"}," while you are ",{"text":"Injured","bold":true,"color":"yellow"}]

execute if entity @s[tag=!snc.injured] unless score @s atk matches 256..289 unless score @s atk matches 294..300 run function snc:shifters/function/unique {"pre":"function snc:shifters/human/check_sneak with storage minecraft:","post":""}