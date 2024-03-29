title @a times 20 240 10
title @a subtitle {"translate":"aot","color":"dark_red"}
#title @a title {"text":"進撃の工人","bold":true,"color":"gray"}
title @a title {"text":"\uE003"}

tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n\n\n---------------------------------\n","color":"dark_red"},{"translate": "aot.credit","color":"gold"},{"text":"\n---------------------------------\n","color":"dark_red"},{"text":"\n "}]
tellraw @a ["",{"translate": "aot.collab"},{"translate":"aot.collab2","color":"light_purple"}]
tellraw @a ["",{"translate":"aot.patreon"},{"text":" Patreon ","bold":true,"color":"gold","clickEvent":{"action":"open_url","value":"https://www.patreon.com/Fanfo"}},{"translate":"aot.patreon2"},{"translate":"aot.patreon3","underlined": true,"bold":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://www.patreon.com/Fanfo"}},{"text":")\n"}]

execute as @a at @s run playsound minecraft:ambient.nether_wastes.mood player @s ~ ~ ~ 1 .1
#execute as @a at @s run playsound minecraft:ambient.basalt_deltas.mood player @s ~ ~ ~ 1 .1
#execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 .1
#execute at @a run playsound minecraft:aot.load player @a ~ ~ ~ 1 1
#say check left hand
#say /data get entity @s Inventory[{Slot:-106b}]
#Rules
gamerule mobGriefing false
gamerule doFireTick false
# gamerule showDeathMessages false
gamerule doImmediateRespawn true

## Logic
scoreboard objectives add constant dummy
scoreboard players set #-1 constant -1
scoreboard players set #100 constant 100
scoreboard players set #4 constant 4
scoreboard players set #2 constant 2
scoreboard players set #1000 constant 1000
scoreboard players set #10000 constant 10000
scoreboard players set #lcg constant 1103515245
scoreboard objectives add earthquake dummy
scoreboard objectives add push_back dummy
scoreboard objectives add death deathCount
scoreboard objectives add random dummy

## Titans
function snc:titans/arguments

scoreboard objectives add kill_cool dummy
scoreboard objectives add idle dummy
scoreboard objectives add atk dummy
scoreboard objectives add walk dummy
scoreboard objectives add movx dummy
scoreboard objectives add movz dummy
scoreboard objectives add volt_range dummy
scoreboard objectives add volt_spread dummy


# Execute each second
scoreboard objectives add clock dummy
scoreboard players set ticks clock 0
scoreboard players set 2s clock 0
scoreboard players set time clock 0

scoreboard objectives add man_cool dummy
## State of the odm:
#   -1 -> has been released
#   0 -> has not been released
#   1 -> waiting to be pulled
#   2 -> landed on left
#   3 -> landed on right
scoreboard objectives add odm_state dummy
scoreboard objectives add odm_atk_R dummy
scoreboard objectives add odm_atk_L dummy
# Time to push the player, the bigger it is the stronger it gets
scoreboard objectives add odm_push dummy
# odm actions
scoreboard objectives add odm_action dummy

scoreboard objectives add rot_throw dummy
scoreboard objectives add rot_impulse_x dummy
scoreboard objectives add rot_impulse_y dummy

scoreboard objectives add id_detect_R dummy
scoreboard objectives add id_detect_L dummy
scoreboard objectives add manual trigger
scoreboard objectives add Titan_Kill_Count dummy
scoreboard objectives add Visib_Kill_Count dummy {"text":"\uE002"}

scoreboard objectives add using_carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add hold_carrot dummy
# scoreboard objectives add player_walking minecraft.custom:walk_one_cm
# scoreboard objectives add player_jumping minecraft.custom:minecraft.jump
scoreboard objectives add gamemode dummy

# ODM
scoreboard objectives add id_player dummy
scoreboard objectives add id_hook_R dummy
scoreboard objectives add id_shooter_R dummy
scoreboard objectives add id_hook_L dummy
scoreboard objectives add id_shooter_L dummy

# Projectiles
scoreboard objectives add projectile dummy

# Villagers
scoreboard objectives add reputation dummy
scoreboard objectives add messages trigger
scoreboard objectives add bee dummy
scoreboard objectives add alma dummy
scoreboard objectives add julian dummy
scoreboard objectives add life dummy
scoreboard objectives add children dummy
scoreboard objectives add dna.y dummy
scoreboard objectives add dna.x dummy


# Pos0 and Pos1 for give motion to entities
scoreboard objectives add motion_x0 dummy
scoreboard objectives add motion_y0 dummy
scoreboard objectives add motion_z0 dummy

scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

## Spawn Scoreboard
scoreboard objectives add spawn dummy
# Initial models
scoreboard players add titan spawn 0
scoreboard players add eldian spawn 0
scoreboard players add $wonder spawn 0
scoreboard players add marley spawn 0

## Config scoreboard
scoreboard objectives add config dummy
# Initial config
scoreboard players set $survey config 0
scoreboard players set $villager config 0
scoreboard players set $titan config 0
scoreboard players set $shifter config 0
scoreboard players set $special config 0

execute unless score $van_vill config matches 0.. run scoreboard players set $van_vill config 0
execute unless score $talk_vill config matches 0.. run scoreboard players set $talk_vill config 1
execute unless score $name_vill config matches 0.. run scoreboard players set $name_vill config 1
execute unless score $birth_rate config matches 0.. run scoreboard players set $birth_rate config 1
execute unless score destroy config matches 0.. run scoreboard players set destroy config 1
execute unless score $can_p_spwn_as_shift config matches 0.. run scoreboard players set $can_p_spwn_as_shift config 1
execute unless score $shift_spwn_rate config matches 0.. run scoreboard players set $shift_spwn_rate config 2
execute unless score $anonymity config matches 0.. run function snc:logic/manual/off/anonymity
execute unless score #lightning config matches 0.. run scoreboard players set #lightning config 1
execute unless score hard config matches 0.. run scoreboard players set hard config 1
execute unless score $titn_spwn_rate config matches 0.. run scoreboard players set $titn_spwn_rate config 2
execute unless score $bossbar config matches 0.. run scoreboard players set $bossbar config 1
execute unless score show_kills config matches 0.. run function snc:logic/manual/on/show_kills
execute unless score comm_feed config matches 0.. run function snc:logic/manual/off/send_command_feedback
execute unless score col_exp config matches 0.. run scoreboard players set col_exp config 1
execute unless score curse config matches 0.. run scoreboard players set curse config 1
execute unless score odm_legacy config matches 0 run scoreboard players set odm_legacy config 1
execute unless score $zombie config matches 0.. run scoreboard players set $zombie config 0
execute unless score $drowned config matches 0.. run scoreboard players set $drowned config 0
execute unless score $husk config matches 0.. run scoreboard players set $husk config 0
execute unless score $skeleton config matches 0.. run scoreboard players set $skeleton config 0
execute unless score $stray config matches 0.. run scoreboard players set $stray config 0
execute unless score $spider config matches 0.. run scoreboard players set $spider config 0
execute unless score $phantom config matches 0.. run scoreboard players set $phantom config 0
execute unless score $witch config matches 0.. run scoreboard players set $witch config 0
execute unless score $enderman config matches 0.. run scoreboard players set $enderman config 0

#gamerule fallDamage false

##### HOW TO CREATE A SHIFTER #####
scoreboard objectives add shifter_vars dummy
## Shifters
function snc:shifters/mobs/arguments

scoreboard objectives add cart_vars dummy
execute unless score minutes cart_vars matches 0.. run scoreboard players set minutes cart_vars 0
execute unless score seconds cart_vars matches 0.. run scoreboard players set seconds cart_vars 0
execute unless score $cart.doesnt.exists shifter_vars matches 0 run scoreboard players set $cart.doesnt.exists shifter_vars 1


scoreboard objectives add colossal_vars dummy
execute unless score minutes colossal_vars matches 0.. run scoreboard players set minutes colossal_vars 0
execute unless score seconds colossal_vars matches 0.. run scoreboard players set seconds colossal_vars 0
execute unless score $colossal.doesnt.exists shifter_vars matches 0 run scoreboard players set $colossal.doesnt.exists shifter_vars 1


scoreboard objectives add koniglich dummy
scoreboard objectives add attack_vars dummy
execute unless score minutes attack_vars matches 0.. run scoreboard players set minutes attack_vars 0
execute unless score seconds attack_vars matches 0.. run scoreboard players set seconds attack_vars 0
execute unless score $attack.doesnt.exists shifter_vars matches 0 run scoreboard players set $attack.doesnt.exists shifter_vars 1


scoreboard objectives add beast_vars dummy
execute unless score minutes beast_vars matches 0.. run scoreboard players set minutes beast_vars 0
execute unless score seconds beast_vars matches 0.. run scoreboard players set seconds beast_vars 0
execute unless score $beast.doesnt.exists shifter_vars matches 0 run scoreboard players set $beast.doesnt.exists shifter_vars 1


scoreboard objectives add apply_damage dummy
scoreboard players set base apply_damage 1024

# teams
team add titan
team modify titan seeFriendlyInvisibles false
team modify titan collisionRule pushOtherTeams

team add cart
team modify cart nametagVisibility never
team modify cart seeFriendlyInvisibles false
team modify cart collisionRule never
team add colossal
team modify colossal nametagVisibility never
team modify colossal seeFriendlyInvisibles false
team add attack
team modify attack nametagVisibility never
team modify attack seeFriendlyInvisibles false
team add beast
team modify beast nametagVisibility never
team modify beast seeFriendlyInvisibles false

team add soldier
team modify soldier seeFriendlyInvisibles false

team add veteran
#team modify veteran color white
team modify veteran seeFriendlyInvisibles false
team add leader
#team modify leader color blue
team modify leader seeFriendlyInvisibles false
team add officer
#team modify officer color dark_red
team modify officer seeFriendlyInvisibles false
team add squad
#team modify squad color light_purple
team modify squad seeFriendlyInvisibles false
team add v_captain
#team modify v_captain color yellow
team modify v_captain seeFriendlyInvisibles false
team add captain
#team modify captain color gold
team modify captain seeFriendlyInvisibles false

team add commander
team modify commander seeFriendlyInvisibles false

# Remember 
# add_<name> -> tag add @s <name>
# remove_<name> -> tag remove @s <name>
# select_<name> -> execute as @s[tag=<sub_name>] or a variant
