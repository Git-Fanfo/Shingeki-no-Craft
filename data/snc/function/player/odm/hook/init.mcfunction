data modify entity @s leash set value []
tp ~ ~ ~
$execute if entity @s[tag=snc.wire.L] positioned ^ ^ ^1 summon spectral_arrow run function snc:logic/apply_motion/odm {"coords":"^0.002 ^ ^0.1","UUID":$(UUID)}
$execute if entity @s[tag=snc.wire.R] positioned ^ ^ ^1 summon spectral_arrow run function snc:logic/apply_motion/odm {"coords":"^-0.002 ^ ^0.1","UUID":$(UUID)}

tag @s remove snc.wire.init