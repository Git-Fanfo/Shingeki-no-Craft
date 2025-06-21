# Shot
$summon snowball ^ ^ ^1 {Tags:["not_mov","motion_flare","$(color)","snc.projectile"],Item:{id:"minecraft:arrow",count:1b,components:{"item_model":"item/blank"}}}

playsound minecraft:aot.human.gun.flare player @a[distance=..15] ~ ~ ~ 1 1
advancement grant @s only snc:survey/flare

$clear @s carrot_on_a_stick[custom_data~{$(color):1b}] 1
function snc:api/give/survey_corps/flare/a_blank