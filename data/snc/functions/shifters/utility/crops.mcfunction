execute if items entity @s weapon.offhand minecraft:wheat_seeds run function snc:shifters/mobs/cart/action/movement/farm {"shifter":"cart","crop":"wheat","seeds":"wheat_seeds"}
execute if items entity @s weapon.offhand minecraft:carrot run function snc:shifters/mobs/cart/action/movement/farm {"shifter":"cart","crop":"carrots","seeds":"carrot"}
execute unless items entity @s weapon.offhand #minecraft:villager_plantable_seeds run function snc:shifters/mobs/cart/action/movement/farm {"shifter":"cart","crop":"air","seeds":"air"}
