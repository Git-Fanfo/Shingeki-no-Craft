execute if score koniglich attack_vars matches 300 run effect give @s nausea 12 0 true
execute if score koniglich attack_vars matches 280 run effect give @s blindness 11 0 true
execute if score koniglich attack_vars matches 300 run title @s times 30 10 0
# Don't change
execute if score koniglich attack_vars matches 300 run title @s title {"text":"\uE004"}

execute if score koniglich attack_vars matches 300 run playsound minecraft:aot.attack_koniglich player @s
execute if score koniglich attack_vars matches 260 run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 .1
execute if score koniglich attack_vars matches 260 run title @s times 5 5 0
execute if score koniglich attack_vars matches 260 run title @s title {"text":"\uE101"}

execute if score koniglich attack_vars matches 250 run title @s times 5 5 0
execute if score koniglich attack_vars matches 250 run title @s title {"text":"\uE102"}

execute if score koniglich attack_vars matches 240 run title @s times 5 5 0
execute if score koniglich attack_vars matches 240 run title @s title {"text":"\uE103"}

execute if score koniglich attack_vars matches 230 run title @s times 5 5 0
execute if score koniglich attack_vars matches 230 run title @s title {"text":"\uE104"}

execute if score koniglich attack_vars matches 220 run title @s times 5 5 0
execute if score koniglich attack_vars matches 220 run title @s title {"text":"\uE105"}

execute if score koniglich attack_vars matches 210 run title @s times 5 5 0
execute if score koniglich attack_vars matches 210 run title @s title {"text":"\uE106"}

execute if score koniglich attack_vars matches 200 run title @s times 5 5 0
execute if score koniglich attack_vars matches 200 run title @s title {"text":"\uE100"}

execute if score koniglich attack_vars matches 190 run title @s times 5 5 0
execute if score koniglich attack_vars matches 190 run title @s title {"text":"\uE102"}

execute if score koniglich attack_vars matches 180 run title @s times 5 5 0
execute if score koniglich attack_vars matches 180 run title @s title {"text":"\uE103"}

execute if score koniglich attack_vars matches 170 run title @s times 5 5 0
execute if score koniglich attack_vars matches 170 run title @s title {"text":"\uE104"}

execute if score koniglich attack_vars matches 160 run title @s times 5 5 0
execute if score koniglich attack_vars matches 160 run title @s title {"text":"\uE105"}

execute if score koniglich attack_vars matches 150 run title @s times 5 10 0
execute if score koniglich attack_vars matches 150 run title @s title {"text":"\uE106"}

# Don't change
execute if score koniglich attack_vars matches 140 run title @s times 0 10 30
execute if score koniglich attack_vars matches 140 run title @s title {"text":"\uE004"}

scoreboard players remove koniglich attack_vars 1