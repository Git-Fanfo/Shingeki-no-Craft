advancement revoke @s only snc:shifters/jaw/charge
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 3 1
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,6_titan:1b},item_model="item/blank"]

execute if score $charge jaw_vars matches 1 run scoreboard players set state jaw_vars 11
