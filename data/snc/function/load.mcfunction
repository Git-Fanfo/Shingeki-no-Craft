#Rules
gamerule doFireTick false
gamerule doImmediateRespawn true

## Logic
scoreboard objectives add constant dummy
scoreboard players set #-1 constant -1
scoreboard players set $visfix constant 1
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
scoreboard objectives add snc.push.dir dummy
scoreboard objectives add death deathCount
scoreboard objectives add random dummy
scoreboard objectives add snc.leave minecraft.custom:minecraft.leave_game

tellraw @a ["\n\n\n\n\n",{"text":"\uE003"}," ",{"text": "Shingeki no Craft","color": "dark_red","bold": true},"\n\n",{"translate": "aot.credit","color":"gold"},{"text":" Fanfo","bold": true},"\n",{"translate": "aot.collab","color":"yellow"},{"text":" Zabat", "bold": true},"\n",{"translate": "aot.support"}," ",{"translate": "aot.sp0","color":"red","bold": true},{"translate": "aot.sp1","color":"gold","bold": true},{"translate": "aot.sp2","color":"yellow","bold": true},{"translate": "aot.sp3","color":"green","bold": true},{"translate": "aot.sp4","color":"aqua","bold": true},{"translate": "aot.sp5","color":"red","bold": true},{"translate": "aot.sp6","color":"gold","bold": true},{"translate": "aot.sp7","color":"yellow","bold": true},{"translate": "aot.sp8","color":"green","bold": true},{"translate": "aot.sp9","color":"aqua","bold": true},{"translate": "aot.sp10","color":"red","bold": true},{"translate": "aot.sp11","color":"gold","bold": true},{"translate": "aot.sp12","color":"yellow","bold": true},{"translate": "aot.sp13","color":"green","bold": true},{"translate": "aot.sp14","color":"aqua","bold": true},{"text": " ❤","color":"red"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit master @s ~ ~ ~ 1 1.3

## Titans
function snc:titans/arguments

scoreboard objectives add snc.time dummy
scoreboard objectives add snc.key dummy
execute unless score #id snc.key matches 0.. run scoreboard players set #id snc.key 4194
scoreboard objectives add snc.lock dummy

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

## State of the odm:
#   0 -> Idle
#   1 -> On Air
#   2 -> Landed 1
#   3 -> Landed 2
scoreboard objectives add odm_state dummy
scoreboard objectives add snc.odm_gas dummy
# Distance to the ropes
scoreboard objectives add snc.odm_dist dummy
scoreboard objectives add snc.odm_dist.before dummy
scoreboard objectives add odm_dmg_R dummy
scoreboard objectives add odm_dmg_L dummy
# Time to push the player, the bigger it is the stronger it gets
scoreboard objectives add snc.odm_push dummy
scoreboard objectives add snc.odm_push.right dummy
scoreboard objectives add snc.odm_push.left dummy
# odm actions
scoreboard objectives add odm_action dummy

scoreboard objectives add snc.odm_throw_x dummy
scoreboard objectives add snc.odm_throw_y dummy
scoreboard objectives add snc.rotation_x dummy
scoreboard objectives add snc.rotation_y dummy

scoreboard objectives add manual trigger
scoreboard objectives add Titan_Kill_Count dummy
scoreboard objectives add Visib_Kill_Count dummy {"text":"\uE002"}

scoreboard objectives add using_carrot minecraft.used:minecraft.carrot_on_a_stick
## Hold scoreboards
scoreboard objectives add snc.hold.rc dummy
scoreboard objectives add snc.hold dummy
# scoreboard objectives add player_walking minecraft.custom:walk_one_cm
# scoreboard objectives add player_jumping minecraft.custom:minecraft.jump
scoreboard objectives add gamemode dummy

scoreboard objectives add snc.hex_chars dummy
scoreboard players set $256 constant 256
data modify storage snc:hx_chrs hex_chars set value ["00","01","02","03","04","05","06","07","08","09","0a","0b","0c","0d","0e","0f","10","11","12","13","14","15","16","17","18","19","1a","1b","1c","1d","1e","1f","20","21","22","23","24","25","26","27","28","29","2a","2b","2c","2d","2e","2f","30","31","32","33","34","35","36","37","38","39","3a","3b","3c","3d","3e","3f","40","41","42","43","44","45","46","47","48","49","4a","4b","4c","4d","4e","4f","50","51","52","53","54","55","56","57","58","59","5a","5b","5c","5d","5e","5f","60","61","62","63","64","65","66","67","68","69","6a","6b","6c","6d","6e","6f","70","71","72","73","74","75","76","77","78","79","7a","7b","7c","7d","7e","7f","80","81","82","83","84","85","86","87","88","89","8a","8b","8c","8d","8e","8f","90","91","92","93","94","95","96","97","98","99","9a","9b","9c","9d","9e","9f","a0","a1","a2","a3","a4","a5","a6","a7","a8","a9","aa","ab","ac","ad","ae","af","b0","b1","b2","b3","b4","b5","b6","b7","b8","b9","ba","bb","bc","bd","be","bf","c0","c1","c2","c3","c4","c5","c6","c7","c8","c9","ca","cb","cc","cd","ce","cf","d0","d1","d2","d3","d4","d5","d6","d7","d8","d9","da","db","dc","dd","de","df","e0","e1","e2","e3","e4","e5","e6","e7","e8","e9","ea","eb","ec","ed","ee","ef","f0","f1","f2","f3","f4","f5","f6","f7","f8","f9","fa","fb","fc","fd","fe","ff"]

# Projectiles
scoreboard objectives add projectile dummy

# Villagers
scoreboard objectives add reputation dummy
scoreboard objectives add messages trigger
scoreboard objectives add snc.bee dummy
scoreboard objectives add alma dummy
scoreboard objectives add julian dummy
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
execute unless score $trigger_transform config matches 0.. run scoreboard players set $trigger_transform config 1
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

#gamerule fallDamage false

##### HOW TO CREATE A SHIFTER #####
scoreboard objectives add shifter_vars dummy
## Shifters
function snc:shifters/mobs/arguments

scoreboard objectives add armor_vars dummy
execute unless score $energy armor_vars matches 0.. run scoreboard players set $energy armor_vars 0
execute unless score $armor.doesnt.exists shifter_vars matches 0 run scoreboard players set $armor.doesnt.exists shifter_vars 1

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
