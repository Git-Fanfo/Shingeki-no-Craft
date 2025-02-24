advancement revoke @s only snc:shifters/beast/slap
execute if predicate snc:chance/20 run playsound minecraft:aot.shifters.attack.grunt player @a ~ ~ ~ 5 0.4
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,4_titan:1b},item_model="item/blank"]
scoreboard players set state beast_vars 15