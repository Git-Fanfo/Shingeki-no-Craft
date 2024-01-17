$execute if score ticks clock matches 19 run scoreboard players add seconds $(shifter)_vars 1

$execute if score seconds $(shifter)_vars matches 1.. run scoreboard players add minutes $(shifter)_vars 1
$execute if score seconds $(shifter)_vars matches 1.. run scoreboard players set seconds $(shifter)_vars -59