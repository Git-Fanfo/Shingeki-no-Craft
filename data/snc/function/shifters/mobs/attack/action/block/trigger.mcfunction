advancement revoke @s only snc:shifters/attack/block
execute if predicate snc:chance/20 run playsound minecraft:aot.shifters.attack.grunt player @a ~ ~ ~ 5 0.3
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,3_titan:1b},item_model="item/blank"]
function snc:shifters/mobs/attack/action/block/init with storage attack