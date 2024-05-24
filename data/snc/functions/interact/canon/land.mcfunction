particle campfire_signal_smoke ~ ~ ~ 1.5 1.5 1.5 0 100 force
# fill ~1 ~-1 ~ ~-1 ~-1 ~ air destroy
# fill ~ ~ ~ ~ ~-2 ~ air destroy
# fill ~ ~-1 ~1 ~ ~-1 ~-1 air destroy
summon firework_rocket ~ ~ ~ {Owner:[I;1,1,1,1],Tags:["snc.projectile","snc.break.hardening"],LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;8947848]}]}}}}

# Get the UUID from the player that shoot the projectile
data modify entity @e[type=firework_rocket,sort=nearest,limit=1] Owner set from entity @s item.tag.SkullOwner.Id
kill
#execute as @e[tag=!hurtbox,distance=..5,sort=nearest] run damage @s 17 fireworks