##### HOW TO CREATE A SHIFTER #####
$data merge storage minecraft:$(titan) {team:titan}
$execute if entity @s[team=attack] run data merge storage minecraft:$(titan) {team:attack}
$execute if entity @s[team=armor] run data merge storage minecraft:$(titan) {team:armor}
$execute if entity @s[team=beast] run data merge storage minecraft:$(titan) {team:beast}
$execute if entity @s[team=cart] run data merge storage minecraft:$(titan) {team:cart}
$execute if entity @s[team=colossal] run data merge storage minecraft:$(titan) {team:colossal}
$function snc:titans/ai/summon with storage minecraft:$(titan)