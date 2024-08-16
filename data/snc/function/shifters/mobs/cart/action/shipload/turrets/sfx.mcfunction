execute store result score @s random run random value 1..3
execute if score @s random matches 1 run playsound minecraft:aot.human.gun.turret.short player @s[distance=..16] ~ ~ ~ 1.1 1.15
execute if score @s random matches 1 run playsound minecraft:aot.human.gun.turret.medium player @s[distance=15..32] ~ ~ ~ 2.5 1.15
execute if score @s random matches 1 run playsound minecraft:aot.human.gun.turret.far player @s[distance=31..] ~ ~ ~ 8.5 1.15
execute if score @s random matches 1 run playsound minecraft:aot.human.gun.casing player @s[distance=..5] ~ ~ ~ 1 1.15

execute if score @s random matches 2 run playsound minecraft:aot.human.gun.turret.short player @s[distance=..16] ~ ~ ~ 1.1 1.1
execute if score @s random matches 2 run playsound minecraft:aot.human.gun.turret.medium player @s[distance=15..32] ~ ~ ~ 2.5 1.1
execute if score @s random matches 2 run playsound minecraft:aot.human.gun.turret.far player @s[distance=31..] ~ ~ ~ 8.5 1.1
execute if score @s random matches 2 run playsound minecraft:aot.human.gun.casing player @s[distance=..5] ~ ~ ~ 1 1.1

execute if score @s random matches 3 run playsound minecraft:aot.human.gun.turret.short player @s[distance=..16] ~ ~ ~ 1.1 1.05
execute if score @s random matches 3 run playsound minecraft:aot.human.gun.turret.medium player @s[distance=15..32] ~ ~ ~ 2.5 1.05
execute if score @s random matches 3 run playsound minecraft:aot.human.gun.turret.far player @s[distance=31..] ~ ~ ~ 8.5 1.05
execute if score @s random matches 3 run playsound minecraft:aot.human.gun.casing player @s[distance=..5] ~ ~ ~ 1 1.05

scoreboard players reset @s random