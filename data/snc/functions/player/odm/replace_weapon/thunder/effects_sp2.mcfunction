execute if entity @s[team=!soldier] if entity @s[team=!veteran] if entity @s[team=!leader] if entity @s[team=!officer] if entity @s[team=!squad] if entity @s[team=!v_captain] if entity @s[team=!captain] run effect give @s slowness 2 4 true
effect give @s[team=soldier] slowness 2 2 true
effect give @s[team=veteran] slowness 2 1 true
effect give @s[team=leader] slowness 2 0 true