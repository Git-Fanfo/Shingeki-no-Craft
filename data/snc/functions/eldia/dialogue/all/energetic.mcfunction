execute store result score @s random run random value 1..5
execute if entity @s[tag=near] run scoreboard players set @s random 6

execute if score @s random matches 1 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Hey there! I'm currently on a break and have plenty of free time. I've been itching for an adventure. Any suggestions or ideas on where I could go?"]
execute if score @s random matches 2 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Hello! I have some extra time on my hands and I'm looking for an exciting adventure. Do you have any recommendations or perhaps need a companion for your own escapade?"]
execute if score @s random matches 3 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Greetings! I find myself with a surplus of free time and a yearning for adventure. If you have any thrilling plans or if you're seeking a partner for an expedition, count me in!"]
execute if score @s random matches 4 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Ready your gear! There's an uncharted island that I've set my sights on. Dare to join?"]
execute if score @s random matches 5 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","I've heard legends of a cave that sparkles with gems yet untaken. Let's seek it out!"]
execute if score @s random matches 6 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","NO! GET AWAY! I STILL HAVE SO MANY ADVENTURES TO LIVE!"]