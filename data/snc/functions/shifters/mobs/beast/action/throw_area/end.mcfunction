scoreboard players set state beast_vars 3
execute on vehicle run effect clear @s slowness
execute on vehicle run effect clear @s levitation
scoreboard players set mov beast_vars 0
function snc:shifters/mobs/beast/action/grab/disable