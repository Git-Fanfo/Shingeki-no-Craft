item replace entity @s container.9 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.10 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.11 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.12 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.13 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.14 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.15 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.16 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.17 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]

item replace entity @s container.18 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.19 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.20 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.21 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.22 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.23 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.24 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.25 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]
item replace entity @s container.26 with carrot_on_a_stick[custom_model_data=55,custom_data={atk_shifter:1b},custom_name="{text:\" \"}"]


item replace entity @s container.27 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=22, custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.missing","color":"light_purple","italic":false}', lore=['{"text":" "}','{"text":"??? ???? ?????","color":"gray","italic":false,"obfuscated":true}']]
item replace entity @s container.28 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=22, custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.missing","color":"aqua","italic":false}', lore=['{"text":" "}','{"text":"??? ???? ?????","color":"gray","italic":false,"obfuscated":true}']]
item replace entity @s container.29 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=22, custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.missing","color":"dark_red","italic":false}', lore=['{"text":" "}','{"text":"??? ???? ?????","color":"gray","italic":false,"obfuscated":true}']]
item replace entity @s container.30 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=22, custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.missing","color":"dark_green","italic":false}', lore=['{"text":" "}','{"text":"??? ???? ?????","color":"gray","italic":false,"obfuscated":true}']]
item replace entity @s container.31 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=22, custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.missing","color":"gold","italic":false}', lore=['{"text":" "}','{"text":"??? ???? ?????","color":"gray","italic":false,"obfuscated":true}']]
item replace entity @s container.32 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=22, custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.missing","color":"yellow","italic":false}', lore=['{"text":" "}','{"text":"??? ???? ?????","color":"gray","italic":false,"obfuscated":true}']]
item replace entity @s container.33 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=22, custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.missing","color":"dark_purple","italic":false}', lore=['{"text":" "}','{"text":"??? ???? ?????","color":"gray","italic":false,"obfuscated":true}']]
item replace entity @s container.34 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=22, custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.missing","color":"gray","italic":false}', lore=['{"text":" "}','{"text":"??? ???? ?????","color":"gray","italic":false,"obfuscated":true}']]
item replace entity @s container.35 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=22, custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.missing","color":"white","italic":false}', lore=['{"text":" "}','{"text":"??? ???? ?????","color":"gray","italic":false,"obfuscated":true}']]

##### HOW TO CREATE A SHIFTER #####
## CART
$execute if score @s cart_vars matches 1 run item replace entity @s container.27 with carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=11,custom_data={atk_shifter:1b,$(id)_titan:1b},custom_name='{"translate":"aot.ability.iron","color":"light_purple","italic":false}',lore=['{"translate":"aot.passive","color":"gray","italic":false}','{"translate":"aot.ability.iron.desc","color":"blue","italic":false}']]

## COLOSSAL
execute if score @s colossal_vars matches 1 run item replace entity @s container.28 with carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=19,custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.heatwave","color":"aqua","italic":false}',lore=['{"translate":"aot.passive","color":"gray","italic":false}','{"translate":"aot.ability.heatwave.desc5","color":"blue","italic":false}','{"translate":"aot.ability.heatwave.desc6","color":"blue","italic":false}']]
# ATTACK
execute if score @s attack_vars matches 1 run item replace entity @s container.29 with carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=20,custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.royal","color":"dark_red","italic":false}',lore=['{"translate":"aot.passive","color":"gray","italic":false}','{"translate":"aot.ability.royal.desc","color":"blue","italic":false}','{"translate":"aot.ability.royal.desc2","color":"blue","italic":false}']]
# BEAST
execute if score @s beast_vars matches 1 run item replace entity @s container.30 with carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=21,custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.sense","color":"dark_green","italic":false}',lore=['{"translate":"aot.ability.sense.desc","color":"yellow"}','{"text":" "}','{"translate":"aot.passive","color":"gray","italic":false}','{"translate":"aot.ability.sense.desc2","color":"blue","italic":false}','{"translate":"aot.ability.sense.desc3","color":"blue","italic":false}','{"translate":"aot.ability.sense.desc4","color":"blue","italic":false}','{"translate":"aot.ability.sense.desc5","color":"blue","italic":false}','{"translate":"aot.ability.sense.desc6","color":"blue","italic":false}']]
$execute if score @s beast_vars matches 1 run give @s spyglass[enchantment_glint_override=true,custom_model_data=1,custom_data={beast_atk_6:1b,atk_shifter:1b,$(id)_titan:1b},custom_name='{"translate":"aot.ability.sense","color":"dark_green","italic":false}',lore=['{"translate":"aot.ability.sense.desc","color":"yellow"}','{"text":" "}','{"translate":"aot.active","color":"gray","italic":false}','{"translate":"aot.ability.sense.desc7","color":"blue","italic":false}','{"translate":"aot.ability.sense.desc8","color":"blue","italic":false}','{"translate":"aot.ability.sense.desc9","color":"blue","italic":false}','{"translate":"aot.ability.sense.desc10","color":"blue","italic":false}']]
## ARMOR
execute if score @s armor_vars matches 1 run item replace entity @s container.31 with carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=58,custom_data={atk_shifter:1b},custom_name='{"translate":"aot.ability.unyielding_bastion","color":"gold","italic":false}',lore=['{"translate":"aot.ability.unyielding_bastion.desc","color":"yellow"}','{"text":" "}','{"translate":"aot.passive","color":"gray","italic":false}','[{"translate":"aot.titan.armor","color":"blue","bold":true,"italic":false}," ",{"translate":"aot.ability.unyielding_bastion.desc2","bold":false}]','{"translate":"aot.ability.unyielding_bastion.desc3","color":"blue","italic":false}','{"translate":"aot.ability.unyielding_bastion.desc4","color":"blue","italic":false}','{"translate":"aot.ability.unyielding_bastion.desc5","color":"blue","italic":false}','{"translate":"aot.ability.unyielding_bastion.desc6","color":"blue","italic":false}']]

$execute if score @s armor_vars matches 1 run function snc:shifters/mobs/armor/action/hardening/main {"shifter":$(shifter)}

$item replace entity @s container.8 with carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=8, custom_data={remove:1b,atk_shifter:1b,$(id)_titan:1b},custom_name="{translate:aot.ability.release,color:white,italic:false}", lore=["{translate:aot.ability.release.desc,color:yellow}","{translate:aot.ability.release.desc2,color:yellow}","{text:\" \",color:gray,italic:false}","{translate:aot.active,color:gray,italic:false}","{translate:aot.ability.release.desc3,color:blue,italic:false}"]] 1

## Resistance!
item modify entity @s armor.head snc:enchantments/shifter