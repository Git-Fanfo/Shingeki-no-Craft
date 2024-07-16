scoreboard players add ticks clock 1
# set time
execute store result score time clock run time query daytime

# Server: execute in minecraft:sncraft_surv run 
execute if score ticks clock matches 20 run function snc:seconds