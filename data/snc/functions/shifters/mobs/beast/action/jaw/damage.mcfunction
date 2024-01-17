$particle crit ^ ^ ^ 0 0 0 1 $(jaw_dmg) force
$damage @s $(jaw_dmg) player_attack by @p[scores={beast_vars=1}]
effect give @s[tag=hurtbox] water_breathing 1 0 true
function snc:shifters/mobs/beast/action/grab/disable