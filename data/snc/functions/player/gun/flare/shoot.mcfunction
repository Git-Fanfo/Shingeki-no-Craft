# Shot
$summon snowball ^ ^ ^1 {Tags:["not_mov","motion_flare","$(color)","snc.projectile"],Item:{id:"minecraft:arrow",Count:1b,components:{"custom_model_data":1}}}

playsound minecraft:aot.human.gun.flare player @a[distance=..15] ~ ~ ~ 1 1
advancement grant @s only snc:survey/flare

$clear @s carrot_on_a_stick[custom_data~{$(color):1b}] 1
function snc:api/give/survey_corps/flare/a_blank