playsound minecraft:aot.human.interact player @s ~ ~ ~ 1 1.15
scoreboard players enable @s messages

## Player
execute if score @s messages matches 10000 as @p[distance=.1..3,predicate=snc:villager/has_inv] run function snc:eldia/gene/bee
execute if score @s messages matches 10001 run tellraw @p[distance=.1..3,predicate=snc:villager/has_inv] ["<",{"selector":"@p"},"> ",{"translate":"aot.inv.desc10"}]

## Actions
execute if score @s messages matches 10 run function snc:eldia/add_follow
execute if score @s messages matches 11 run function snc:eldia/gene/partner

## Alma
# CHECK GIFT
execute if score @s messages matches 1002 run function snc:logic/quest/alma/check_gift
execute if score @s messages matches 1003 run function snc:logic/quest/alma/main

## Julian
# CHECK GIFT
execute if score @s messages matches 1012 run function snc:logic/quest/julian/check_gift
execute if score @s messages matches 1013 run function snc:logic/quest/julian/main

scoreboard players set @s messages 0