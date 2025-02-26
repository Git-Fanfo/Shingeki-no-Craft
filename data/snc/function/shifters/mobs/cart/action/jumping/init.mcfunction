playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 3 1
scoreboard players set state cart_vars 11
scoreboard players set action cart_vars 11
scoreboard players set #snc.jump.particle cart_vars 10
#playsound minecraft:entity.breeze.wind_burst master @a ~ ~-.5 ~ 3 .8
$scoreboard players remove $energy cart_vars $(energy_hold)
execute rotated ~ 0 positioned ^ ^-.5 ^-3 run function snc:shifters/mobs/cart/action/jumping/effects