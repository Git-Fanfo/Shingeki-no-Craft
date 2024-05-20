ride @p mount @s
$execute as @e[type=villager] if score @s dna.$(crom) = @p dna.x run scoreboard players reset @s dna.$(crom)
$execute on passengers if entity @s[type=player] run scoreboard players reset @s dna.$(crom)

## Effects
execute at @s on passengers if entity @s[type=player] run function snc:eldia/respawn/inherit_fx
execute if entity @s[tag=woman] on passengers if entity @s[type=armor_stand] run title @p title [{"translate":"aot.welcome"}," ",{"selector":"@s","color":"light_purple","bold": true},"!"]
execute if entity @s[tag=!woman] on passengers if entity @s[type=armor_stand] run title @p title [{"translate":"aot.welcome"}," ",{"selector":"@s","color":"yellow","bold": true},"!"]
## Inherit
# Royal
execute if score @s koniglich matches 1 on passengers if entity @s[type=player] run scoreboard players set @s koniglich 1

execute on passengers if entity @s[type=player] run function snc:shifters/function/unique {"pre":"function snc:shifters/transfer/get with storage minecraft:","post":""}

# Sex
execute if entity @s[tag=woman] on passengers if entity @s[type=player] run tag @s add woman
execute if entity @s[tag=!woman] on passengers if entity @s[type=player] run tag @s remove woman

## RESPAWN
execute on passengers if entity @s[type=player] run ride @s dismount
function snc:logic/kill_mob