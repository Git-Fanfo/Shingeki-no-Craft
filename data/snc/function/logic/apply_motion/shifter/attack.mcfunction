execute if entity @s[tag=snc.punch] run function snc:logic/apply_motion/shifter/xyz {"z":0, "y":0, "x":.1, "shifter":"attack"}
execute if entity @s[tag=snc.strong.punch] run function snc:logic/apply_motion/shifter/xyz {"z":0, "y":.1, "x":.1, "shifter":"attack"}

execute if entity @s[tag=snc.kick] run function snc:logic/apply_motion/shifter/xyz {"z":0, "y":0, "x":.1, "shifter":"attack"}
execute if entity @s[tag=snc.low.kick] run function snc:logic/apply_motion/shifter/xyz {"z":0, "y":-.1, "x":0, "shifter":"attack"}