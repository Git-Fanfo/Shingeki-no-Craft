## [slim -> Hurtbox]
## [slime-giant -> Colission]
## [item_display -> Model]
## [zombie_villager -> AI]

execute as @s[tag=ai] run function snc:titans/ai/main
execute as @s[tag=model] run function snc:titans/model/main
execute as @s[tag=hurtbox] run function snc:titans/tangible/hurtbox

execute as @s[tag=send] run function snc:titans/send_tags

execute as @s[tag=snc.hall] run function snc:titans/hallucigenia/main

execute as @s[tag=snc.titan.spawn] run function snc:titans/spawn/trigger

return 1