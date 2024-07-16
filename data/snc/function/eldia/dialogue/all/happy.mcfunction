execute store result score @s random run random value 1..5
execute if entity @s[tag=near] run scoreboard players set @s random 6

execute if score @s random matches 1 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Hey there! How've you been? Anything new or exciting happening in your life?"]
execute if score @s random matches 2 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","I'm here for ya if you ever need an ear to listen or advice from a friend!"]
execute if score @s random matches 3 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Hey stranger! It feels like forever since we talked. What's new with you? Let's catch up!"]
execute if score @s random matches 4 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Great seeing you! Life's a party, and I'm just dancing through one melody to the next!"]
execute if score @s random matches 5 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","If laughter is the best medicine, consider me your on-call doctor for joy!"]
execute if score @s random matches 6 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","No, no, no, no... NO! Please don't hurt me!"]