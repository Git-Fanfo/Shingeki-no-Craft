ride @s dismount
summon armor_stand ^ ^ ^ {Invisible:1b,Tags:["beast","dead","shifter"],Pose:{Head:[-10f,-20f,0f]},ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:58}}]}
ride @s mount @e[type=armor_stand,tag=dead,sort=nearest,limit=1]
execute on vehicle store result entity @s Rotation[0] float 1 run execute on passengers if entity @s[tag=aj.beast.root] run data get entity @s Rotation[0]