# Shot
$summon snowball ^ ^ ^1 {Tags:["not_mov","motion_flare","$(color)","projectile"],Item:{id:"minecraft:arrow",Count:1b,components:{"custom_model_data":1}}}

playsound minecraft:aot.bullet_flare player @a[distance=..15] ~ ~ ~ 1 1
advancement grant @s only snc:survey/flare

$function snc:api/clear/survey_corps/flare/$(color)
function snc:api/give/survey_corps/flare/a_blank