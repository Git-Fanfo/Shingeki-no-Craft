$execute if entity @s[tag=!woman] \
    if score @s koniglich matches 1 \
    if predicate snc:chance/$(birth_rate) as @e[type=#snc:eldian,sort=nearest,distance=.1..4,tag=woman] \
    unless score @s children matches 3.. at @s run \
        function snc:eldia/gene/baby {"nbt":{Age:-24000,Tags:["koniglich","snc.born"],active_effects:[{id:"minecraft:levitation",amplifier:0b,duration:40,show_particles:0b}]}}
$execute if entity @s[tag=!woman] \
    unless score @s koniglich matches 1 \
    if predicate snc:chance/$(birth_rate) as @e[type=#snc:eldian,sort=nearest,distance=.1..4,tag=woman] \
    unless score @s children matches 3.. at @s run \
    function snc:eldia/gene/inherit/villager/royal

$execute if entity @s[tag=woman] unless score @s children matches 3.. if predicate snc:chance/$(birth_rate) if entity @e[type=#snc:eldian,sort=nearest,distance=.1..4,tag=!woman] run function snc:eldia/gene/inherit/villager/royal