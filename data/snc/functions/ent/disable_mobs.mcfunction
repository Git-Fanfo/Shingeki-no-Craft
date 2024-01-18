## Edit this one :D
execute as @s[type=zombie] run function snc:logic/disable {"mob":"zombie"}
execute as @s[type=drowned] run function snc:logic/disable {"mob":"drowned"}
execute as @s[type=husk] run function snc:logic/disable {"mob":"husk"}
execute as @s[type=skeleton] run function snc:logic/disable {"mob":"skeleton"}
execute as @s[type=stray] run function snc:logic/disable {"mob":"stray"}
execute as @s[type=spider] run function snc:logic/disable {"mob":"spider"}
execute as @s[type=witch] run function snc:logic/disable {"mob":"witch"}
execute as @s[type=phantom] run function snc:logic/disable {"mob":"phantom"}
execute as @s[type=enderman] run function snc:logic/disable {"mob":"enderman"}

### DON'T TOUCH THIS ###
execute as @s[type=zombie_villager,tag=!titan] run function snc:logic/kill_mob
execute as @s[type=wandering_trader,tag=!eldian] run function snc:logic/kill_mob
execute as @s[type=creeper,tag=!motion] run function snc:logic/kill_mob
execute as @s[type=slime,tag=!collision,tag=!hurtbox,tag=!body,tag=!motion,tag=!nape] run function snc:logic/kill_mob

#execute unless entity @s[tag=killed] run function snc:ent/main
function snc:ent/main
### DON'T TOUCH THIS ###