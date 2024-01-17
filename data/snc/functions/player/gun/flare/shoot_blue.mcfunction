# Shot
summon snowball ^ ^ ^1 {Tags:["not_mov","motion_flare","blue","projectile"],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}

playsound minecraft:aot.bullet_flare player @a[distance=..15] ~ ~ ~ 1 1
advancement grant @s only snc:survey/flare/shoot

clear @s carrot_on_a_stick{blue:1b} 1
function snc:give/item/survey_corps/flare/blank