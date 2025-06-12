attribute @s minecraft:scale base set 5.8
effect give @s slowness 2 127 true
playsound minecraft:aot.shifters.armor.punch.swing player @a ~ ~ ~ 2.5 1

execute on vehicle on passengers if entity @s[tag=transform] at @s run function snc:shifters/mobs/armor/action/rocket/damage with storage minecraft:armor