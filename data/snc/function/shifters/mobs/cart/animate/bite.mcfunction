execute if score $mask cart_vars matches 1 run function snc:shifters/mobs/cart/animate/stop/bite {"f1":"shifters/cart/bite/mask/1","f2":"shifters/cart/bite/mask/2","f3":"shifters/cart/bite/mask/3"}
execute if score $mask cart_vars matches 0 run function snc:shifters/mobs/cart/animate/stop/bite {"f1":"shifters/cart/bite/unmask/1","f2":"shifters/cart/bite/unmask/2","f3":"shifters/cart/bite/unmask/3"}

return 1