## Drop current items before replace
function snc:shifters/human/inventory/save/shifter with storage minecraft:colossal
function snc:shifters/abilities/clear
function snc:shifters/human/inventory/spawn/shifter with storage minecraft:colossal
function snc:shifters/transfer/spaces

function snc:shifters/mobs/colossal/abilities/atk_3 with storage minecraft:colossal
execute if score $form colossal_vars matches 1 run function snc:shifters/mobs/colossal/abilities/atk_2 with storage minecraft:colossal
execute if score $form colossal_vars matches 0 run function snc:shifters/mobs/colossal/abilities/atk_4 with storage minecraft:colossal

function snc:shifters/mobs/colossal/head {"frame":1}

function snc:shifters/transfer/actions with storage minecraft:colossal