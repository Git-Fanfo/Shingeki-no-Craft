advancement revoke @s only snc:survey/odm/load
execute if predicate snc:odm/has_odm_blade run function snc:player/odm/throw/load
execute unless predicate snc:odm/has_odm_blade run function snc:player/odm/throw/explode
clear @s *[custom_data~{snc.iceburst:1b}] 1