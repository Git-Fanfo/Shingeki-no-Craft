execute if predicate snc:shifters/has_injection_kon run scoreboard players set @s atk 240
execute unless predicate snc:shifters/has_injection_kon run scoreboard players set @s atk 120

playsound minecraft:entity.witch.drink player @s ~ ~ ~ 1 1.7
clear @s carrot_on_a_stick[custom_data~{inj_full:1b}] 1
function snc:api/give/shifters/syringe/empty