# Controller
execute if score @s idle matches ..0 run scoreboard players set @s idle 41
execute if score @s atk matches ..0 run scoreboard players set @s atk 141
execute if score @s walk matches ..0 run scoreboard players set @s walk 59

# Idle: 0..40
scoreboard players remove @s idle 1
# Attacks: 0..70 - 71..140
scoreboard players remove @s atk 1
# Walk: 0..58
scoreboard players remove @s walk 1
# Sounds
execute if score ticks clock matches 19 store result score @s random run random value 1..8
execute if score ticks clock matches 19 if score @s random matches 1 run playsound minecraft:entity.zombie_villager.ambient master @a ~ ~ ~ 3 .2

# Zick
execute if entity @s[tag=mob1,tag=attack] if score @s atk matches 0..70 run function snc:titans/mobs/1/animate/attack
execute if entity @s[tag=mob1,tag=attack] if score @s atk matches 71..140 run function snc:titans/mobs/1/animate/attack_2
execute if entity @s[tag=mob1,tag=!attack,tag=walk] run function snc:titans/mobs/1/animate/walk
execute if entity @s[tag=mob1,tag=!attack,tag=!walk] run function snc:titans/mobs/1/animate/idle

# Zwei
execute if entity @s[tag=mob2,tag=attack] if score @s atk matches 0..70 run function snc:titans/mobs/2/animate/attack
execute if entity @s[tag=mob2,tag=attack] if score @s atk matches 71..140 run function snc:titans/mobs/2/animate/attack_2
execute if entity @s[tag=mob2,tag=!attack,tag=!attack_2,tag=walk] run function snc:titans/mobs/2/animate/walk
execute if entity @s[tag=mob2,tag=!attack,tag=!attack_2,tag=!walk] run function snc:titans/mobs/2/animate/idle

# Michelle
execute if entity @s[tag=mob3,tag=attack] if score @s atk matches 71..140 run function snc:titans/mobs/3/animate/attack
execute if entity @s[tag=mob3,tag=attack] if score @s atk matches 0..70 run function snc:titans/mobs/3/animate/attack_2
execute if entity @s[tag=mob3,tag=!attack,tag=!attack_2,tag=walk] run function snc:titans/mobs/3/animate/walk
execute if entity @s[tag=mob3,tag=!attack,tag=!attack_2,tag=!walk] run function snc:titans/mobs/3/animate/idle

# Valentina
execute if entity @s[tag=mob4,tag=attack] if score @s atk matches 71..140 run function snc:titans/mobs/4/animate/attack
execute if entity @s[tag=mob4,tag=attack] if score @s atk matches 0..70 run function snc:titans/mobs/4/animate/attack_2
execute if entity @s[tag=mob4,tag=!attack,tag=walk] run function snc:titans/mobs/4/animate/walk
execute if entity @s[tag=mob4,tag=!attack,tag=!walk] run function snc:titans/mobs/4/animate/idle

# Vladlen
execute if entity @s[tag=mob5,tag=attack] if score @s atk matches 71..140 run function snc:titans/mobs/5/animate/attack
execute if entity @s[tag=mob5,tag=attack] if score @s atk matches 0..70 run function snc:titans/mobs/5/animate/attack_2
execute if entity @s[tag=mob5,tag=!attack,tag=!walk] run function snc:titans/mobs/5/animate/idle
execute if entity @s[tag=mob5,tag=!attack,tag=walk] run function snc:titans/mobs/5/animate/walk

# Ameer
execute if entity @s[tag=mob6,tag=attack] if score @s atk matches 71..140 run function snc:titans/mobs/6/animate/attack
execute if entity @s[tag=mob6,tag=attack] if score @s atk matches 0..70 run function snc:titans/mobs/6/animate/attack_2
execute if entity @s[tag=mob6,tag=!attack,tag=!walk] run function snc:titans/mobs/6/animate/idle
execute if entity @s[tag=mob6,tag=!attack,tag=walk] run function snc:titans/mobs/6/animate/walk

# Allan
execute if entity @s[tag=mob7,tag=!attack,tag=!walk] run function snc:titans/mobs/7/animate/idle
execute if entity @s[tag=mob7,tag=!attack,tag=walk] run function snc:titans/mobs/7/animate/walk

# Creepy
execute if entity @s[tag=mob8,tag=attack] if score @s atk matches 71..140 run function snc:titans/mobs/8/animate/attack
execute if entity @s[tag=mob8,tag=attack] if score @s atk matches 0..70 run function snc:titans/mobs/8/animate/attack_2
execute if entity @s[tag=mob8,tag=!attack,tag=!walk] run function snc:titans/mobs/8/animate/idle
execute if entity @s[tag=mob8,tag=!attack,tag=walk] run function snc:titans/mobs/8/animate/walk

# Nijama
execute if entity @s[tag=c] run function snc:titans/mobs/c/animate/idle