execute as @s[predicate=snc:gun/has_machine_gun] if predicate snc:is_riding_turret run function snc:shifters/mobs/cart/action/turret/shoot
execute as @s[predicate=snc:gun/has_red] run function snc:player/gun/flare/shoot_red
execute as @s[predicate=snc:gun/has_green] run function snc:player/gun/flare/shoot_green
execute as @s[predicate=snc:gun/has_black] run function snc:player/gun/flare/shoot_black
execute as @s[predicate=snc:gun/has_purple] run function snc:player/gun/flare/shoot_purple
execute as @s[predicate=snc:gun/has_blue] run function snc:player/gun/flare/shoot_blue
execute as @s[predicate=snc:gun/has_yellow] run function snc:player/gun/flare/shoot_yellow
#execute as @s[predicate=snc:odm/has_spear_r] run function snc:player/gun/spear/shoot