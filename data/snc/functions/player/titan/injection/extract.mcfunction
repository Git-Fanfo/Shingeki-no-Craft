damage @s 16 player_attack by @s
execute unless score @s koniglich matches 1 as @p at @s run \
    function snc:player/titan/injection/get {"give_syringe":"full"}
execute if score @s koniglich matches 1 as @p at @s run \
    function snc:player/titan/injection/get {"give_syringe":"royal"}
