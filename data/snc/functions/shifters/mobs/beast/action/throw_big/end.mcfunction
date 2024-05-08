scoreboard players set state beast_vars 3
execute on vehicle run effect clear @s slowness
scoreboard players set $mov beast_vars 0
## In this case I can't use function snc:shifters/mobs/beast/action/grab/disable
## since the tag=beast_wrap is needed!
execute on vehicle on passengers if entity @s[type=player] run function snc:shifters/mobs/beast/abilities/give