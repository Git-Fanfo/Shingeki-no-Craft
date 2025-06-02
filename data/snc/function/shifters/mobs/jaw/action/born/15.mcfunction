#execute on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/jaw/bite/meat/12"]
scoreboard players set shift.regen jaw_vars 100000
scoreboard players set state jaw_vars 3
execute on vehicle on controller run function snc:shifters/mobs/jaw/abilities/give