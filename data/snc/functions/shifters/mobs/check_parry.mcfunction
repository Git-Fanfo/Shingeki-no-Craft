## If can parry but and is using parry
#$execute if entity @s[tag=$(parry)] if score state $(shifter)_vars matches 19 if entity @p[scores={$(shifter)_vars=1}] at @s run function snc:shifters/mobs/$(shifter)/action/block/hurt
$execute if entity @s[tag=$(parry)] if score state $(shifter)_vars matches 19 run function snc:shifters/mobs/$(shifter)/action/block/hurt

## If can parry but is not using parry
#$execute if entity @s[tag=$(parry)] unless score state $(shifter)_vars matches 19 run function snc:shifters/mobs/apply_damage {"shifter":"$(shifter)"}
$execute if entity @s[tag=$(parry)] unless score state $(shifter)_vars matches 19 run function snc:shifters/human/damage
## If can't parry
#$execute unless entity @s[tag=$(parry)] run function snc:shifters/mobs/apply_damage {"shifter":"$(shifter)"}
$execute unless entity @s[tag=$(parry)] run function snc:shifters/human/damage