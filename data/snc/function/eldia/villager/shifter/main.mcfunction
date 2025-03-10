effect give @s slowness 1 0 true
advancement grant @p[distance=0..5] only snc:shifters/aura

function snc:shifters/function/multiple {"pre":"execute positioned ~ ~2.05 ~ run function snc:eldia/villager/shifter/","post":""}

execute if predicate snc:is_hurt run function snc:shifters/transfer/hit