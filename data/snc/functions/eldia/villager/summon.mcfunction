$execute if score $name_vill config matches 0 run summon villager ~ ~ ~ {Tags:["eldian","head",$(tags)],CustomName:'{"text":"$(name)"}',Passengers:[{id:"minecraft:armor_stand",CustomNameVisible:0b,CustomName:'{"text":"$(name)"}',Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["body","eldian"],ShowArms:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b,components:{"custom_model_data":$(head)}}],ArmorDropChances:[0F,0F,0F,0F],active_effects:[{id:"minecraft:slow_falling",amplifier:0b,duration:40,show_particles:0b}]}
$execute if score $name_vill config matches 1 run summon villager ~ ~ ~ {Tags:["eldian","head",$(tags)],CustomName:'{"text":"$(name)"}',Passengers:[{id:"minecraft:armor_stand",CustomNameVisible:1b,CustomName:'{"text":"$(name)"}',Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["body","eldian"],ShowArms:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b,components:{"custom_model_data":$(head)}}],ArmorDropChances:[0F,0F,0F,0F],active_effects:[{id:"minecraft:slow_falling",amplifier:0b,duration:40,show_particles:0b}]}