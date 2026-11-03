#copper
execute as @e[type=!#iva.esb:no_mob,predicate=iva.esb:check_item/copper/has_copper] run function iva.esb:item/charged_copper/charged_copper
execute as @e[type=#arrows,tag=iva.esb.entity.copper_arrow] at @s run particle electric_spark ~ ~ ~ 0 0 0 0.1 1
execute as @e[type=!#iva.esb:no_mob,predicate=iva.esb:arrow_effect_check/copper_arrow_hit_entity] run function iva.esb:item/charged_copper/copper_arrow_effect

execute as @a at @s if predicate iva.esb:check_item/ice_diver_head anchored eyes positioned ^ ^ ^ unless predicate iva.esb:is_water run function iva.esb:item/ice_diver/ice_diver
execute as @a at @s anchored eyes positioned ^ ^ ^ if score @s iva.esb.fishing_rod_use matches 1.. run function iva.esb:item/frozen_catcher/frozen_catcher

execute as @a if score @s iva.esb.fishing_rod_use matches 1.. run scoreboard players reset @s iva.esb.fishing_rod_use
execute as @e[type=#arrows,tag=!iva.esb.arrow_checked] run function iva.esb:item/arrow_check