execute store result score @s random run random value 1..5
execute if entity @s[tag=near] run scoreboard players set @s random 6

execute if score @s random matches 1 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Um, h-hello... I'm sorry. Is there something I can help you with? I'll do my best..."]
execute if score @s random matches 2 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Hello, lovely soul! I'm feeling absolutely delighted and content!"]
execute if score @s random matches 3 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Hey, cutie! I'm brimming with joy and it's contagious! What can I do to make your day brighter?"]
execute if score @s random matches 4 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Have you smiled today? Let's change that if not, your smile could light up the whole town!"]
execute if score @s random matches 5 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Life's too short for frowns, join me in spreading cheer as we go around!"]
execute if score @s random matches 6 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Behind me! I wont allow them to come any closer!"]