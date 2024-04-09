## Titan
execute if entity @s[tag=hurtbox] unless score @s koniglich matches 1 as @p at @s run \
    function snc:player/titan/injection/get {"give_syringe":"full"}
execute if entity @s[tag=hurtbox] if score @s koniglich matches 1 as @p at @s run \
    function snc:player/titan/injection/get {"give_syringe":"royal"}
execute if entity @s[tag=titan] unless entity @s[tag=hurtbox] as @p run function snc:player/titan/injection/failed

## Player
execute if score @s[tag=transform] shifter_vars matches 1.. run function snc:player/titan/injection/extract
execute if score @s[tag=!transform] shifter_vars matches 1.. unless predicate snc:player/is_sneaking run title @p actionbar [{"text": "✖ ","color":"red","bold": true},{"translate":"aot.extract.error"}," ✖"]
execute if score @s[tag=!transform] shifter_vars matches 1.. if predicate snc:player/is_sneaking run function snc:player/titan/injection/extract