tag @s add iva.esb.arrow_checked
execute if data entity @s weapon.components."minecraft:custom_data"."iva.esb.bow_damage" run data modify entity @s damage set from entity @s weapon.components."minecraft:custom_data"."iva.esb.bow_damage"

#copper
execute if data entity @s weapon.components."minecraft:custom_data"."iva.esb.bow_copper_arrows" run tag @s add iva.esb.entity.copper_arrow
execute if predicate iva.esb:arrow_effect_check/copper_arrow run tag @s add iva.esb.entity.copper_arrow