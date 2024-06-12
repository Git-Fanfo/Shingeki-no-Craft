## Detect
scoreboard players set @s snc.lock 0

## Compare
# Missing Key
execute unless predicate snc:player/has_key run scoreboard players set @s snc.lock 1

# Get key id value
execute unless score @s snc.lock matches 1 store result score @s snc.key run data get entity @s SelectedItem.components."minecraft:custom_data".snc_key_id
# ID doesn't match
execute unless score @s snc.lock matches 1 unless score @s snc.key = @e[tag=snc.handcuffs,type=#snc:eldian,sort=nearest,limit=1] snc.lock run scoreboard players set @s snc.lock 2

## Matches!
# If @s snc.lock still 0 it means... It matches!

## Display
execute if score @s snc.lock matches 1 run tellraw @s ["",{"text":"🔒 ","color":"red"},{"translate":"aot.key.no.desc"}," ",{"translate":"aot.key","color":"yellow"}," ",{"translate":"aot.key.no.desc2"}]
execute if score @s snc.lock matches 2 run tellraw @s ["",{"text":"🔒 ","color":"red"},{"translate":"aot.key.no.desc3","color":"yellow"}," ",{"translate":"aot.key.no.desc4"},{"text":" #","color":"yellow","italic": true},{"score":{"name":"@e[tag=snc.handcuffs,type=#snc:eldian,sort=nearest,limit=1]","objective":"snc.lock"},"color":"yellow","italic": true}]
execute if score @s snc.lock matches 1 run playsound block.anvil.land master @a ~ ~ ~ 2 1
execute if score @s snc.lock matches 2 run playsound minecraft:block.vault.insert_item_fail master @a ~ ~ ~ 2 1
execute if score @s snc.lock matches 0 as @e[tag=snc.handcuffs,type=interaction,sort=nearest,limit=1] run function snc:interact/handcuffs/kill

# Remove key id value
scoreboard players reset @s snc.key
scoreboard players reset @s snc.lock