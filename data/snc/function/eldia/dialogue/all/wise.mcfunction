execute store result score @s random run random value 1..5
execute if entity @s[tag=near] run scoreboard players set @s random 6

execute if score @s random matches 1 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","How can I assist you? Please keep in mind that I approach things cautiously to ensure the best possible care."]
execute if score @s random matches 2 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Hello, I'm a doctor and I'm here to help. However, I do take a careful approach when it comes to medical matters."]
execute if score @s random matches 3 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Greetings, I'm a doctor and I prioritize the well-being of my patients."]
execute if score @s random matches 4 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","In the realm of healing, one must always proceed with deliberate caution and precision."]
execute if score @s random matches 5 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","Consider each step of your journey as important as the destination itself."]
execute if score @s random matches 6 run tellraw @a[distance=..5] ["<",{"selector":"@s"},"> ","They are here! I don't have much time..."]