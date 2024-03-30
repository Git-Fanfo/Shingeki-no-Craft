scoreboard players set ticks clock 0

## hour : Check curse each hour.
scoreboard players add hour clock 1
execute if score hour clock matches 3600.. run function snc:logic/schedule/1h/main

## 5s : Check shifters each 5 seconds
scoreboard players add 5s clock 1
execute if score 5s clock matches 5.. run function snc:logic/schedule/5s

## 15m : Reproduce villagers
scoreboard players add 15m clock 1
execute if score 15m clock matches 900.. run function snc:logic/schedule/15m/main

## 1m : test
scoreboard players add 1m clock 1
execute if score 1m clock matches 60.. run scoreboard players set 1m clock 0