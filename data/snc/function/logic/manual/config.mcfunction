playsound ui.button.click player @s ~ ~ ~ 1 1.2
playsound ui.button.click player @s ~ ~ ~ 1 1.2
playsound ui.button.click player @s ~ ~ ~ 1 1.2
execute as @s[scores={manual=-1}] run scoreboard players set $shifter_destroy config 1
execute as @s[scores={manual=-2}] run scoreboard players set $shifter_destroy config 0
execute as @s[scores={manual=-3}] run scoreboard players set hard config 1
execute as @s[scores={manual=-4}] run scoreboard players set hard config 0
execute as @s[scores={manual=-5}] run function snc:logic/manual/on/show_kills
execute as @s[scores={manual=-6}] run function snc:logic/manual/off/show_kills
execute as @s[scores={manual=-7}] run function snc:logic/manual/on/send_command_feedback
execute as @s[scores={manual=-8}] run function snc:logic/manual/off/send_command_feedback
execute as @s[scores={manual=-9}] run scoreboard players set col_exp config 0
execute as @s[scores={manual=-10}] run scoreboard players set col_exp config 1
execute as @s[scores={manual=-11}] run scoreboard players set col_exp config 2
execute as @s[scores={manual=-12}] run scoreboard players set curse config 0
execute as @s[scores={manual=-13}] run scoreboard players set curse config 1
execute as @s[scores={manual=-14}] run function snc:logic/manual/off/anonymity
execute as @s[scores={manual=-15}] run function snc:logic/manual/on/anonymity
execute as @s[scores={manual=-18}] run scoreboard players set #lightning config 0
execute as @s[scores={manual=-19}] run scoreboard players set #lightning config 1
execute as @s[scores={manual=-20}] run scoreboard players set curse config 2
execute as @s[scores={manual=-21}] run scoreboard players set $titn_spwn_rate config 0
execute as @s[scores={manual=-22}] run scoreboard players set $titn_spwn_rate config 1
execute as @s[scores={manual=-23}] run scoreboard players set $titn_spwn_rate config 2
execute as @s[scores={manual=-24}] run scoreboard players set $titn_spwn_rate config 3
execute as @s[scores={manual=-25}] run scoreboard players set $can_p_spwn_as_shift config 1
execute as @s[scores={manual=-26}] run scoreboard players set $can_p_spwn_as_shift config 0
execute as @s[scores={manual=-27}] run scoreboard players set $shift_spwn_rate config 0
execute as @s[scores={manual=-28}] run scoreboard players set $shift_spwn_rate config 1
execute as @s[scores={manual=-29}] run scoreboard players set $shift_spwn_rate config 2
execute as @s[scores={manual=-30}] run scoreboard players set $bossbar config 1
execute as @s[scores={manual=-31}] run scoreboard players set $bossbar config 0
execute as @s[scores={manual=-32}] run function snc:logic/manual/on/vanilla_villagers
execute as @s[scores={manual=-33}] run scoreboard players set $van_vill config 0

execute as @s[scores={manual=-34}] run scoreboard players set $pure_destroy config 1
execute as @s[scores={manual=-35}] run scoreboard players set $pure_destroy config 0

execute as @s[scores={manual=-36}] run scoreboard players set $trigger_transform config 1
execute as @s[scores={manual=-37}] run scoreboard players set $trigger_transform config 0

execute as @s[scores={manual=-52}] run scoreboard players set $talk_vill config 1
execute as @s[scores={manual=-53}] run scoreboard players set $talk_vill config 0
execute as @s[scores={manual=-54}] run function snc:logic/manual/on/name_vill
execute as @s[scores={manual=-55}] run function snc:logic/manual/off/name_vill
execute as @s[scores={manual=-56}] run scoreboard players set $birth_rate config 0
execute as @s[scores={manual=-57}] run scoreboard players set $birth_rate config 1
execute as @s[scores={manual=-58}] run scoreboard players set $birth_rate config 2

execute as @s[scores={manual=-59}] run scoreboard players set $odm_gas config 1
execute as @s[scores={manual=-60}] run scoreboard players set $odm_gas config 0
execute as @s[scores={manual=-61}] run scoreboard players set $titan_tracking config 1
execute as @s[scores={manual=-62}] run scoreboard players set $titan_tracking config 0
execute as @s[scores={manual=-63}] run scoreboard players set $intro config 1
execute as @s[scores={manual=-64}] run scoreboard players set $intro config 0
execute as @s[scores={manual=-65}] run scoreboard players set $titan_drops config 1
execute as @s[scores={manual=-66}] run scoreboard players set $titan_drops config 0
execute as @s[scores={manual=-67}] run scoreboard players set $death_msg config 1
execute as @s[scores={manual=-68}] run scoreboard players set $death_msg config 0
execute as @s[scores={manual=-69}] run scoreboard players set $survival config 1
execute as @s[scores={manual=-70}] run scoreboard players set $survival config 0
execute if score @s manual matches -71 run scoreboard players set $debug config 0
execute if score @s manual matches -72 run scoreboard players set $debug config 1




execute if score @s manual matches -100..-1 run title @s times 0 2s 10
execute if score @s manual matches -100..-1 run title @s title {"translate":"Config changed","color":"yellow"}
execute if score @s manual matches -100..-1 run title @s subtitle [{"translate":"aot.config.save.2","color":"white"},{"text": "『","color": "green","bold": true},{"translate":"aot.config.save","color":"yellow","bold": true},{"text": "』","color": "green","bold": true}]

execute if score @s manual matches -1000 run scoreboard players set $survey config 1
execute if score @s manual matches -1001 run scoreboard players set $survey config 0
execute if score @s manual matches -1002 run scoreboard players set $villager config 1
execute if score @s manual matches -1003 run scoreboard players set $villager config 0
execute if score @s manual matches -1004 run scoreboard players set $titan config 1
execute if score @s manual matches -1005 run scoreboard players set $titan config 0
execute if score @s manual matches -1006 run scoreboard players set $shifter config 1
execute if score @s manual matches -1007 run scoreboard players set $shifter config 0
execute if score @s manual matches -1008 run scoreboard players set $special config 1
execute if score @s manual matches -1009 run scoreboard players set $special config 0
execute if score @s manual matches -1010 run function snc:logic/manual/on/fire_tick
execute if score @s manual matches -1011 run function snc:logic/manual/off/fire_tick

execute unless score @s manual matches -100 run function snc:api/config
execute as @s[scores={manual=-100}] run function snc:logic/broadcast/reload
scoreboard players set @s manual 0