advancement revoke @s only snc:human/hold/syringe_full
execute if predicate snc:shifters/has_injection_full unless predicate snc:shifters/has_injection_kon run function snc:player/titan/injection/main {"sryinge":"sryinge"}
execute if predicate snc:shifters/has_injection_kon run function snc:player/titan/injection/main {"sryinge":"sryinge_royal"}