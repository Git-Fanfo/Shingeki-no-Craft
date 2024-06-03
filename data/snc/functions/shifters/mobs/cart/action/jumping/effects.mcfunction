particle white_smoke ^ ^ ^1.5 ^ ^ ^1000000 0.0000001 0 force
execute rotated ~36 0 run particle cloud ^ ^ ^.5 ^ ^ ^1000000 0.0000001 0 force

scoreboard players remove #snc.jump.particle cart_vars 1
execute if score #snc.jump.particle cart_vars matches 1.. rotated ~36 0 run function snc:shifters/mobs/cart/action/jumping/effects