scoreboard players set #destroy armor_vars 0

execute rotated ~ 0 unless block ^ ^5 ^6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^1 ^5 ^6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^-1 ^5 ^6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^2 ^5 ^6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^-2 ^5 ^6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^3 ^5 ^6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^-3 ^5 ^6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1

execute rotated ~ 0 unless block ^6 ^5 ^ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^6 ^5 ^1 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^6 ^5 ^-1 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^6 ^5 ^2 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^6 ^5 ^-2 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^6 ^5 ^3 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^6 ^5 ^-3 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1

execute rotated ~ 0 unless block ^-6 ^5 ^ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^-6 ^5 ^1 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^-6 ^5 ^-1 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^-6 ^5 ^2 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^-6 ^5 ^-2 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^-6 ^5 ^3 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^-6 ^5 ^-3 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1

execute rotated ~ 0 unless block ^ ^5 ^-6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^1 ^5 ^-6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^-1 ^5 ^-6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^2 ^5 ^-6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^-2 ^5 ^-6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^3 ^5 ^-6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 unless block ^-3 ^5 ^-6 #snc:destroy/nature run scoreboard players set #destroy armor_vars 1

execute if score #destroy armor_vars matches 1 run scoreboard players remove $energy armor_vars 50