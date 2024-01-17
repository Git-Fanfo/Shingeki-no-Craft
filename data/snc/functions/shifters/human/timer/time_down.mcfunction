# If transformed into a shifter go down
$execute if score ticks clock matches 19 run scoreboard players remove seconds $(shifter)_vars 1

#If something breaks
#execute unless score minutes $(shifter)_vars matches ..0 unless score minutes $(shifter)_vars matches 0 if score seconds $(shifter)_vars matches ..-1 run scoreboard players remove minutes $(shifter)_vars 1
$execute unless score minutes $(shifter)_vars matches ..0 if score seconds $(shifter)_vars matches ..-1 run scoreboard players remove minutes $(shifter)_vars 1
$execute if score seconds $(shifter)_vars matches ..-1 run scoreboard players set seconds $(shifter)_vars 59
# show
$execute if score seconds $(shifter)_vars matches 0..9 run title @s actionbar ["",{"text":"Time left:","bold":true,"color":"$(color)"},{"text":" "},{"score":{"name":"minutes","objective":"$(shifter)_vars"}},{"text":":0"},{"score":{"name":"seconds","objective":"$(shifter)_vars"}}]
$execute if score seconds $(shifter)_vars matches 10.. run title @s actionbar ["",{"text":"Time left:","bold":true,"color":"$(color)"},{"text":" "},{"score":{"name":"minutes","objective":"$(shifter)_vars"}},{"text":":"},{"score":{"name":"seconds","objective":"$(shifter)_vars"}}]