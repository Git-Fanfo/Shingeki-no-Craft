# Init
$data merge entity @s {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["snc.projectile","odm","rope","$(side)"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.scale",Base:2}]}
# Wrap bats
data modify entity @s leash.UUID set from entity @p UUID