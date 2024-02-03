particle block dirt ~ ~1 ~ 1 0 1 1 150 force
damage @s 20 player_attack by @p[scores={cart_vars=1}]
effect give @s[tag=hurtbox] water_breathing 1 0 true

execute if score destroy config matches 1 run summon creeper ^ ^ ^4.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:1b,Fuse:0,Tags:["motion"]}