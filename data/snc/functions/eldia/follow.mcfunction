execute if entity @p[predicate=snc:is_sneaking] run function snc:eldia/rem_follow
execute if entity @s[tag=follow] at @p rotated ~ 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ facing entity @p feet