tellraw @s[tag=snc.injured] ["","You ",{"text":"can't","bold":true,"color":"dark_red"}," turn into a ",{"text":"Titan","bold":true,"color":"dark_red"}," while you are ",{"text":"Injured","bold":true,"color":"yellow"}]

execute if entity @s[tag=!snc.injured] run function snc:shifters/function/unique {"pre":"function snc:shifters/human/check_sneak with storage minecraft:","post":""}