##### HOW TO CREATE A SHIFTER #####
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n░░░░░▒▒▒▓▓█","color":"blue"},{"text":"【","color":"yellow"},{"translate":"SHIFTERS","color":"gold","bold": true},{"text":"】","color":"yellow"},{"text":"█▓▓▒▒▒░░░░░","color":"blue"}]

execute if score $cart.doesnt.exists shifter_vars matches 0 run tellraw @s ["",{"text":"Cart x: ","color":"light_purple"},{"score":{"name":"#x_cart", "objective": "shifter_vars"}},{"text":" z: ","color":"light_purple"},{"score":{"name":"#z_cart", "objective": "shifter_vars"}}]
execute if score $cart.doesnt.exists shifter_vars matches 1 run tellraw @s ["",{"translate":"aot.titan.cart","color":"light_purple"}," ",{"translate":"aot.shifters.not_born"}]

execute if score $colossal.doesnt.exists shifter_vars matches 0 run tellraw @s ["",{"text":"Colossal x: ","color":"aqua"},{"score":{"name":"#x_colossal", "objective": "shifter_vars"}},{"text":" z: ","color":"aqua"},{"score":{"name":"#z_colossal", "objective": "shifter_vars"}}]
execute if score $colossal.doesnt.exists shifter_vars matches 1 run tellraw @s ["",{"translate":"aot.titan.colossal","color":"aqua"}," ",{"translate":"aot.shifters.not_born"}]

execute if score $attack.doesnt.exists shifter_vars matches 0 run tellraw @s ["",{"text":"Attack x: ","color":"dark_red"},{"score":{"name":"#x_attack", "objective": "shifter_vars"}},{"text":" z: ","color":"dark_red"},{"score":{"name":"#z_attack", "objective": "shifter_vars"}}]
execute if score $attack.doesnt.exists shifter_vars matches 1 run tellraw @s ["",{"translate":"aot.titan.attack","color":"dark_red"}," ",{"translate":"aot.shifters.not_born"}]    

execute if score $beast.doesnt.exists shifter_vars matches 0 run tellraw @s ["",{"text":"Beast x: ","color":"green"},{"score":{"name":"#x_beast", "objective": "shifter_vars"}},{"text":" z: ","color":"green"},{"score":{"name":"#z_beast", "objective": "shifter_vars"}}]
execute if score $beast.doesnt.exists shifter_vars matches 1 run tellraw @s ["",{"translate":"aot.titan.beast","color":"green"}," ",{"translate":"aot.shifters.not_born"}]

execute if score $armor.doesnt.exists shifter_vars matches 0 run tellraw @s ["",{"text":"Armor x: ","color":"green"},{"score":{"name":"#x_armor", "objective": "shifter_vars"}},{"text":" z: ","color":"green"},{"score":{"name":"#z_armor", "objective": "shifter_vars"}}]
execute if score $armor.doesnt.exists shifter_vars matches 1 run tellraw @s ["",{"translate":"aot.titan.armor","color":"green"}," ",{"translate":"aot.shifters.not_born"}]