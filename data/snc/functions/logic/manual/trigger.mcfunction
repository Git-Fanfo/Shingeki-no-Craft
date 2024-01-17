execute as @s[scores={manual=1}] run function snc:give/item/craft/string
execute as @s[scores={manual=2}] run function snc:give/item/craft/odm
execute as @s[scores={manual=3}] run function snc:give/item/craft/gas_trigger
execute as @s[scores={manual=4}] run function snc:give/item/craft/ultra_hard_steel
execute as @s[scores={manual=5}] run function snc:give/item/craft/odm_blade
execute as @s[scores={manual=6}] run function snc:give/item/craft/survey_corps_1
execute as @s[scores={manual=7}] run function snc:give/item/craft/survey_corps_2
execute as @s[scores={manual=8}] run function snc:logic/first/main
execute as @s[scores={manual=9}] run function snc:api/config
execute as @s[scores={manual=11}] run function snc:logic/manual/shifters/attack
execute as @s[scores={manual=12}] run function snc:logic/manual/shifters/beast
execute as @s[scores={manual=13}] run function snc:logic/manual/shifters/cart
execute as @s[scores={manual=14}] run function snc:logic/manual/shifters/colossal

execute if score @s manual matches 11..20 run function snc:api/respawn_shifters

scoreboard players set @s manual 0