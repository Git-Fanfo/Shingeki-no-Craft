particle block dirt ~ ~1 ~ 1 0 1 1 150 force
damage @s 20 player_attack by @p[scores={cart_vars=1}]
effect give @s[tag=hurtbox] water_breathing 1 0 true

function snc:shifters/mobs/cart/action/slam/creeper
execute if score destroy config matches 1 run function snc:shifters/mobs/cart/action/slam/destroy