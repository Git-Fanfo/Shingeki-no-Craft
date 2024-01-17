clear @s carrot_on_a_stick{inj:1b} 1
scoreboard players set @s hold_carrot 0
$function snc:give/item/shifters/syringe/$(give_syringe)

playsound minecraft:entity.witch.drink player @s ~ ~ ~ 1 1.7
advancement grant @s only snc:syringe_full