tag @s remove first
$execute unless predicate snc:player/is_sneaking if entity @s[tag=!transform] if score $energy $(shifter)_vars matches 720.. run scoreboard players set @s atk 300
$execute if predicate snc:player/is_sneaking run function snc:shifters/human/toggle_explosion {"shifter":$(shifter)}