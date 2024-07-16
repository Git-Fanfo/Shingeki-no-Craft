execute if score @s reputation matches 100.. run scoreboard players set @s reputation 100
execute if score @s reputation matches ..-100 run scoreboard players set @s reputation -100

execute if score @s[tag=!event] reputation matches 0.. if predicate snc:chance/40 run function snc:logic/event/events/food
execute if score @s[tag=!event] reputation matches 50.. if predicate snc:chance/60 run function snc:logic/event/events/taxes
execute if score @s[tag=!event] reputation matches 50.. if predicate snc:chance/60 run function snc:logic/event/events/seller
execute if score @s[tag=!event] reputation matches 50.. run function snc:logic/event/events/undying/main
execute if score @s[tag=!event] reputation matches 0..49 run function snc:logic/event/events/energy
execute if score @s[tag=!event] reputation matches -26..-1 run function snc:logic/event/events/sick
execute if score @s[tag=!event] reputation matches -49..-27 run function snc:logic/event/events/raid
execute if score @s[tag=!event] reputation matches ..-50 run function snc:logic/event/events/marley

tag @s remove event
# raid
# marley
# sick
# seller - energy
# food - undying 