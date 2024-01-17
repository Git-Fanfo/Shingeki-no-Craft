execute on passengers if entity @s[type=player,tag=!gun] run function snc:give/item/machine_gun
execute on passengers if entity @s[type=player] run tag @s add gun

execute as @s[tag=pos_1] on passengers if entity @s[type=player,tag=transform] on vehicle run \
    function snc:shifters/mobs/cart/action/turret/reset {"pos":1}
execute as @s[tag=pos_2] on passengers if entity @s[type=player,tag=transform] on vehicle run \
    function snc:shifters/mobs/cart/action/turret/reset {"pos":2}
execute as @s[tag=pos_3] on passengers if entity @s[type=player,tag=transform] on vehicle run \
    function snc:shifters/mobs/cart/action/turret/reset {"pos":3}