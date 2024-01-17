## Titan
execute if entity @s[tag=hurtbox] unless score @s koniglich matches 1 as @p at @s run \
    function snc:player/titan/injection/get {"give_syringe":"full"}
execute if entity @s[tag=hurtbox] if score @s koniglich matches 1 as @p at @s run \
    function snc:player/titan/injection/get {"give_syringe":"royal"}
execute if entity @s[tag=titan] unless entity @s[tag=hurtbox] as @p run function snc:player/titan/injection/failed

## Player
execute if score @s shifter_vars matches 1.. run function snc:player/titan/injection/extract