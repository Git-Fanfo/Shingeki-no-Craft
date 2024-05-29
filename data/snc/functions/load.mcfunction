#Rules
gamerule doFireTick false
# gamerule showDeathMessages false
gamerule doImmediateRespawn true

## Logic
scoreboard objectives add constant dummy
scoreboard players set #-1 constant -1
scoreboard players set #15 constant 15
scoreboard players set #100 constant 100
scoreboard players set #45 constant 45
scoreboard players set #315 constant 315
scoreboard players set #180 constant 180
scoreboard players set #361 constant 361
scoreboard players set #4 constant 4
scoreboard players set #2 constant 2
scoreboard players set #1000 constant 1000
scoreboard players set #10000 constant 10000
scoreboard players set #lcg constant 1103515245
scoreboard objectives add earthquake dummy
scoreboard objectives add snc.knockback dummy
scoreboard objectives add snc.push dummy
scoreboard objectives add death deathCount
scoreboard objectives add random dummy
scoreboard objectives add snc.leave minecraft.custom:minecraft.leave_game

tellraw @a ["\n\n\n\n\n",{"text":"\uE003"}," ",{"text": "Shingeki no Craft","color": "dark_red","bold": true},"\n\n",{"translate": "aot.credit","color":"gold"},{"text":" Fanfo","bold": true},"\n",{"translate": "aot.collab","color":"yellow"},{"text":" Zabat", "bold": true},"\n",{"translate": "aot.support"}," ",{"translate": "aot.sp0","color":"red","bold": true},{"translate": "aot.sp1","color":"gold","bold": true},{"translate": "aot.sp2","color":"yellow","bold": true},{"translate": "aot.sp3","color":"green","bold": true},{"translate": "aot.sp4","color":"aqua","bold": true},{"translate": "aot.sp5","color":"red","bold": true},{"translate": "aot.sp6","color":"gold","bold": true},{"translate": "aot.sp7","color":"yellow","bold": true},{"translate": "aot.sp8","color":"green","bold": true},{"translate": "aot.sp9","color":"aqua","bold": true},{"translate": "aot.sp10","color":"red","bold": true},{"translate": "aot.sp11","color":"gold","bold": true},{"translate": "aot.sp12","color":"yellow","bold": true},{"translate": "aot.sp13","color":"green","bold": true},{"translate": "aot.sp14","color":"aqua","bold": true},{"text": " ❤","color":"red"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit master @s ~ ~ ~ 1 1.3

## Titans
function snc:titans/arguments

scoreboard objectives add snc.time dummy

scoreboard objectives add snc.despawn dummy
execute unless score $max_titans snc.despawn matches 0.. run scoreboard players set $max_titans snc.despawn 19
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
scoreboard objectives add odm_dmg_R dummy
scoreboard objectives add odm_dmg_L dummy
# Time to push the player, the bigger it is the stronger it gets
scoreboard objectives add odm_push dummy
# odm actions
scoreboard objectives add odm_action dummy

scoreboard objectives add rot_throw dummy
scoreboard objectives add snc.rotation_x dummy
scoreboard objectives add snc.rotation_y dummy

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
execute unless score $shifter_destroy config matches 0.. run scoreboard players set $shifter_destroy config 1
execute unless score $pure_destroy config matches 0.. run scoreboard players set $pure_destroy config 1
execute unless score $can_p_spwn_as_shift config matches 0.. run scoreboard players set $can_p_spwn_as_shift config 1
execute unless score $shift_spwn_rate config matches 0.. run scoreboard players set $shift_spwn_rate config 2
execute unless score #lightning config matches 0.. run scoreboard players set #lightning config 1
execute unless score hard config matches 0.. run scoreboard players set hard config 1
execute unless score $titn_spwn_rate config matches 0.. run scoreboard players set $titn_spwn_rate config 2
execute unless score $bossbar config matches 0.. run scoreboard players set $bossbar config 1
execute unless score show_kills config matches 0.. run function snc:logic/manual/on/show_kills
execute unless score comm_feed config matches 0.. run function snc:logic/manual/off/send_command_feedback
execute unless score col_exp config matches 0.. run scoreboard players set col_exp config 1
execute unless score curse config matches 0.. run scoreboard players set curse config 1
execute unless score odm_legacy config matches 0 run scoreboard players set odm_legacy config 1

#gamerule fallDamage false

scoreboard objectives add snc.vehicle_move minecraft.custom:minecraft.horse_one_cm
##### HOW TO CREATE A SHIFTER #####
scoreboard objectives add shifter_vars dummy
## Shifters
function snc:shifters/mobs/arguments

scoreboard objectives add armor_vars dummy
execute unless score $energy armor_vars matches 0.. run scoreboard players set $energy armor_vars 0
execute unless score $armor.doesnt.exists shifter_vars matches 0 run scoreboard players set $armor.doesnt.exists shifter_vars 0

scoreboard objectives add cart_vars dummy
execute unless score $energy cart_vars matches 0.. run scoreboard players set $energy cart_vars 0
execute unless score $cart.doesnt.exists shifter_vars matches 0 run scoreboard players set $cart.doesnt.exists shifter_vars 1

scoreboard objectives add colossal_vars dummy
execute unless score $energy colossal_vars matches 0.. run scoreboard players set $energy colossal_vars 0
execute unless score $colossal.doesnt.exists shifter_vars matches 0 run scoreboard players set $colossal.doesnt.exists shifter_vars 1

scoreboard objectives add koniglich dummy
scoreboard objectives add attack_vars dummy
execute unless score $energy attack_vars matches 0.. run scoreboard players set $energy attack_vars 0
execute unless score $attack.doesnt.exists shifter_vars matches 0 run scoreboard players set $attack.doesnt.exists shifter_vars 1

scoreboard objectives add beast_vars dummy
execute unless score $energy beast_vars matches 0.. run scoreboard players set $energy beast_vars 0
execute unless score $beast.doesnt.exists shifter_vars matches 0 run scoreboard players set $beast.doesnt.exists shifter_vars 1


# scoreboard objectives add apply_damage dummy
# scoreboard players set base apply_damage 1024

## Chests
scoreboard objectives add snc.ender minecraft.custom:minecraft.open_enderchest
scoreboard objectives add snc.chest minecraft.custom:minecraft.open_chest
scoreboard objectives add snc.barrel minecraft.custom:minecraft.open_barrel
scoreboard objectives add snc.shulker minecraft.custom:minecraft.open_shulker_box
scoreboard objectives add snc.trap minecraft.custom:minecraft.trigger_trapped_chest

# teams
team add titan
team modify titan seeFriendlyInvisibles false
team modify titan collisionRule pushOtherTeams

team add nocol
team modify nocol collisionRule never

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
team add armor
team modify armor nametagVisibility never
team modify armor seeFriendlyInvisibles false

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

execute unless score $anonymity config matches 0.. run function snc:logic/manual/off/anonymity

# Remember 
# add_<name> -> tag add @s <name>
# remove_<name> -> tag remove @s <name>
# select_<name> -> execute as @s[tag=<sub_name>] or a variant
