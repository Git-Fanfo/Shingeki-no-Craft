# sin = x
# cos = z

# 0
# execute if score @s snc.rotation_x matches -22..22 run say 0
execute if score @s snc.rotation_x matches -22..22 on vehicle run scoreboard players set @s motion_x0 0
execute if score @s snc.rotation_x matches -22..22 on vehicle run scoreboard players set @s motion_z0 -13650
# 45
# execute if score @s snc.rotation_x matches 23..67 run say 45
execute if score @s snc.rotation_x matches 23..67 on vehicle run scoreboard players set @s motion_x0 9652
execute if score @s snc.rotation_x matches 23..67 on vehicle run scoreboard players set @s motion_z0 -9652
# 90
# execute if score @s snc.rotation_x matches 68..112 run say 90
execute if score @s snc.rotation_x matches 68..112 on vehicle run scoreboard players set @s motion_x0 13650
execute if score @s snc.rotation_x matches 68..112 on vehicle run scoreboard players set @s motion_z0 0
# 135
# execute if score @s snc.rotation_x matches 113..157 run say 135
execute if score @s snc.rotation_x matches 113..157 on vehicle run scoreboard players set @s motion_x0 9652
execute if score @s snc.rotation_x matches 113..157 on vehicle run scoreboard players set @s motion_z0 9652
# -180
# execute if score @s snc.rotation_x matches -180..-158 run say -180
execute if score @s snc.rotation_x matches -180..-158 on vehicle run scoreboard players set @s motion_x0 0
execute if score @s snc.rotation_x matches -180..-158 on vehicle run scoreboard players set @s motion_z0 13650
# execute if score @s snc.rotation_x matches 158..179 run say -180
execute if score @s snc.rotation_x matches 158..179 on vehicle run scoreboard players set @s motion_x0 0
execute if score @s snc.rotation_x matches 158..179 on vehicle run scoreboard players set @s motion_z0 13650
# -135
# execute if score @s snc.rotation_x matches -157..-113 run say -135
execute if score @s snc.rotation_x matches -157..-113 on vehicle run scoreboard players set @s motion_x0 -9652
execute if score @s snc.rotation_x matches -157..-113 on vehicle run scoreboard players set @s motion_z0 9652
# -90
# execute if score @s snc.rotation_x matches -112..-68 run say -90
execute if score @s snc.rotation_x matches -112..-68 on vehicle run scoreboard players set @s motion_x0 -13650
execute if score @s snc.rotation_x matches -112..-68 on vehicle run scoreboard players set @s motion_z0 0
# -45
# execute if score @s snc.rotation_x matches -67..-23 run say -45
execute if score @s snc.rotation_x matches -67..-23 on vehicle run scoreboard players set @s motion_x0 -9652
execute if score @s snc.rotation_x matches -67..-23 on vehicle run scoreboard players set @s motion_z0 -9652


execute if score @s snc.rotation_y matches -90..0 on vehicle run scoreboard players set @s motion_y0 -9652
execute if score @s snc.rotation_y matches 1..90 on vehicle run scoreboard players set @s motion_y0 9800

execute on vehicle run function snc:logic/apply_motion/redirect_odm