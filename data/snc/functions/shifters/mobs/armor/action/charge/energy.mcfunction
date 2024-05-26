scoreboard players set #destroy armor_vars 0

execute rotated ~ 0 positioned ^ ^5 ^6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^1 ^5 ^6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^-1 ^5 ^6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^2 ^5 ^6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^-2 ^5 ^6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^3 ^5 ^6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^-3 ^5 ^6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1

execute rotated ~ 0 positioned ^6 ^5 ^ unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^6 ^5 ^1 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^6 ^5 ^-1 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^6 ^5 ^2 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^6 ^5 ^-2 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^6 ^5 ^3 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^6 ^5 ^-3 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1

execute rotated ~ 0 positioned ^-6 ^5 ^ unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^-6 ^5 ^1 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^-6 ^5 ^-1 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^-6 ^5 ^2 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^-6 ^5 ^-2 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^-6 ^5 ^3 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^-6 ^5 ^-3 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1

execute rotated ~ 0 positioned ^ ^5 ^-6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^1 ^5 ^-6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^-1 ^5 ^-6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^2 ^5 ^-6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^-2 ^5 ^-6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^3 ^5 ^-6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1
execute rotated ~ 0 positioned ^-3 ^5 ^-6 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #destroy armor_vars 1

execute if score #destroy armor_vars matches 1 run scoreboard players remove $energy armor_vars 50