clear @s carrot_on_a_stick[custom_data~{inj_full:1}]
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2
playsound aot.rock_smash player @a ~ ~ ~ 2
particle minecraft:firework ~ ~2 ~ 1 1 1 .7 100
#summon firework_rocket ~ ~2 ~ {Silent:1b,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16768256],FadeColors:[I;16777215]}]}}}}

execute if entity @s[type=player] rotated ~ 0 positioned ^ ^5 ^-8 run function snc:player/drop_inv
tellraw @s ["",{"translate":"aot.you"},{"translate":"aot.titan.pure","bold":true,"color":"dark_red"},{"translate":"aot.now"},{"translate":"aot.pure1"},{"translate":"aot.cant","bold":true,"color":"white"},{"translate":"aot.pure2"},{"keybind":"key.use","bold":true,"color":"yellow"},". ",{"translate":"aot.pure3"},{"keybind":"key.sneak","bold":true,"color":"yellow"},".\n\n",{"translate": "aot.pure4"}," ",{"keybind":"key.togglePerspective","color": "aqua"},{"translate": "aot.pure5"}]

tag @s[type=player] add titan
tag @s[type=player] add consume
execute if entity @s[type=player] run effect give @a[distance=..5,sort=nearest,limit=3] resistance 5 127 true
#execute if entity @s[type=player] run team join titan

function snc:titans/select_titan
execute if entity @s[type=!player] run kill
ride @s mount @e[tag=hurtbox,sort=nearest,limit=1]
execute if entity @s[type=player] run function snc:titans/abilities/give