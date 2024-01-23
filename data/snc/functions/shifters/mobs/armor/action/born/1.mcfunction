#execute positioned ~ ~3 ~ run function snc:titans/volt/spawn
#playsound minecraft:item.trident.thunder master @a ~ ~ ~ 5
#playsound minecraft:item.trident.thunder master @a ~ ~ ~ 5
#playsound minecraft:aot.attack_roar player @a ~ ~ ~ 5
#execute on vehicle run effect give @s levitation 2 7 true
attribute @p[scores={armor_vars=1}] minecraft:generic.scale base set 4.5

## Remove this
#execute on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin{CustomModelData:28}
scoreboard players set state armor_vars 3
execute on vehicle on passengers if entity @s[type=player] run function snc:give/item/armor/primary
## Remove this