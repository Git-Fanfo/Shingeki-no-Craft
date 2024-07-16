execute store result score @s random run random value 1..5
execute if entity @s[tag=near] run scoreboard players set @s random 6

execute if score @s random matches 1 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Hello, I'm sorry if I seem a bit preoccupied. I have a lot on my plate right now."]
execute if score @s random matches 2 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Hey there, I'm quite busy at the moment, but I'll do my best to assist you. What brings you here?"]
execute if score @s random matches 3 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Hi, I appreciate your presence, though I must admit I have limited time for conversation."]
execute if score @s random matches 4 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","My apologies for the rush, but can we talk while I work? Every second today is accounted for."]
execute if score @s random matches 5 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","If you could streamline your request, it would help. I'm juggling several tasks as we speak."]
execute if score @s random matches 6 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","These titans won't stop me from finishing my work. Bring them on!"]