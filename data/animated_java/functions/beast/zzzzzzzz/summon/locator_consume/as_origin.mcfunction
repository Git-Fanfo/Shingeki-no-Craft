summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["beast","shifter","aj.beast.locator","aj.beast.locator.consume","aj.new"],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"beast\",\"color\":\"light_purple\"},\".\",{\"text\":\"locatorEntity\",\"color\":\"white\"},\"[\",{\"text\":\"consume\",\"color\":\"yellow\"},\"]\"]]"}
execute as @e[type=minecraft:armor_stand,tag=aj.beast.locator.consume,tag=aj.new,limit=1,distance=..1] run function animated_java:beast/zzzzzzzz/summon/locator_consume/as_entity
data modify entity @s Owner set from storage animated_java Owner
data remove storage animated_java Owner