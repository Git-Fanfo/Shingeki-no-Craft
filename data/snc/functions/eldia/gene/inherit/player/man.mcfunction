# Check if the woman is a player
execute if entity @s[type=player] store result score @s dna.y run data get entity @s UUID[1]

execute if entity @s[type=player] unless score @s koniglich matches 1 run function snc:eldia/gene/baby {"nbt":{Age:-24000,Tags:["snc.dna.x","snc.dna.y","snc.born"],active_effects:[{id:"minecraft:levitation",amplifier:0b,duration:40,show_particles:0b}]}}
execute if entity @s[type=player] if score @s koniglich matches 1 run function snc:eldia/gene/baby {"nbt":{Age:-24000,Tags:["koniglich","snc.dna.x","snc.dna.y","snc.born"],active_effects:[{id:"minecraft:levitation",amplifier:0b,duration:40,show_particles:0b}]}}

# If is a villager remove x
execute unless entity @s[type=player] unless score @s koniglich matches 1 run function snc:eldia/gene/baby {"nbt":{Age:-24000,Tags:["snc.dna.x","snc.born"],active_effects:[{id:"minecraft:levitation",amplifier:0b,duration:40,show_particles:0b}]}}
execute unless entity @s[type=player] if score @s koniglich matches 1 run function snc:eldia/gene/baby {"nbt":{Age:-24000,Tags:["koniglich","snc.dna.x","snc.born"],active_effects:[{id:"minecraft:levitation",amplifier:0b,duration:40,show_particles:0b}]}}