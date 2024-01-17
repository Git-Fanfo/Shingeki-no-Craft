# ATTACK
execute if entity @s[scores={atk=68}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:107}}}
execute if entity @s[scores={atk=67}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:108}}}
execute if entity @s[scores={atk=66}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:109}}}
execute if entity @s[scores={atk=65}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:110}}}
execute if entity @s[scores={atk=64}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:111}}}
execute if entity @s[scores={atk=63}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:112}}}
execute if entity @s[scores={atk=59}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:113}}}
execute if entity @s[scores={atk=55}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:114}}}
execute if entity @s[scores={atk=51}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:113}}}
execute if entity @s[scores={atk=47}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:112}}}
execute if entity @s[scores={atk=43}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:113}}}
execute if entity @s[scores={atk=39}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:114}}}

execute if entity @s[scores={atk=1..40}] run tag @s remove attack