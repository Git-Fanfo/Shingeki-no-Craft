scoreboard objectives remove aj.i
scoreboard objectives remove aj.id
scoreboard objectives remove aj.tween_time
scoreboard objectives remove aj.anim_time
scoreboard objectives remove aj.life_time
scoreboard objectives remove aj.armor.export_version
scoreboard objectives remove aj.armor.rig_loaded
scoreboard objectives remove aj.armor.animation.idle.local_anim_time
scoreboard objectives remove aj.armor.animation.walk.local_anim_time
scoreboard objectives remove aj.armor.animation.born.local_anim_time
scoreboard objectives remove aj.armor.animation.death.local_anim_time
scoreboard objectives remove aj.armor.animation.run.local_anim_time
scoreboard objectives remove aj.armor.animation.slide.local_anim_time
scoreboard objectives remove aj.armor.animation.idle.loop_mode
scoreboard objectives remove aj.armor.animation.walk.loop_mode
scoreboard objectives remove aj.armor.animation.born.loop_mode
scoreboard objectives remove aj.armor.animation.death.loop_mode
scoreboard objectives remove aj.armor.animation.run.loop_mode
scoreboard objectives remove aj.armor.animation.slide.loop_mode
tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},[{"text":"INFO ℹ","color":"green"},{"text":" > ","color":"gray"},{"text":"The armor Rig has been uninstalled successfully.\n"},{"text":"Please remove the Rig's functions from the datapack before reloading.","color":"gray"}]]