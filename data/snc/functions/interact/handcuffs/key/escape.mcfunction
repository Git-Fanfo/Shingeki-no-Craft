damage @s 2
execute if score @s shifter_vars matches 1.. run damage @s 5

particle block{block_state:"chain"} ~ ~ ~ .5 .5 .5 1 50 force
playsound minecraft:block.vault.insert_item_fail master @a ~ ~ ~ 2 .9

execute if predicate snc:chance/5 on vehicle run function snc:interact/handcuffs/kill