summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["beast","shifter","aj.beast.locator","aj.beast.locator.right_hand","aj.new"],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"beast\",\"color\":\"light_purple\"},\".\",{\"text\":\"locatorEntity\",\"color\":\"white\"},\"[\",{\"text\":\"right_hand\",\"color\":\"yellow\"},\"]\"]]"}
execute as @e[type=minecraft:armor_stand,tag=aj.beast.locator.right_hand,tag=aj.new,limit=1,distance=..1] run function animated_java:beast/zzzzzzzz/summon/locator_right_hand/as_entity
data modify entity @s Owner set from storage animated_java Owner
data remove storage animated_java Owner