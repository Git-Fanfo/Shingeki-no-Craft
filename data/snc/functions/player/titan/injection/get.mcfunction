clear @s carrot_on_a_stick[custom_data~{inj:1}] 1
scoreboard players set @s hold_carrot 0
$function snc:api/give/shifters/syringe/$(give_syringe)

playsound minecraft:entity.witch.drink player @s ~ ~ ~ 1 1.7
advancement grant @s only snc:shifters/syringe_full