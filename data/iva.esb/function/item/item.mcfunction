execute as @e[type=!#iva.esb:no_mob] run function iva.esb:item/charged_copper/charged_copper
execute as @e[type=#arrows] run function iva.esb:item/charged_copper/copper_arrow
execute as @a at @s if predicate iva.esb:check_item/ice_diver_head anchored eyes positioned ^ ^ ^ unless predicate iva.esb:is_water run function iva.esb:item/ice_diver/ice_diver
execute as @a at @s anchored eyes positioned ^ ^ ^ if score @s iva.esb.fishing_rod_use matches 1.. run function iva.esb:item/frozen_catcher/frozen_catcher

execute as @a if score @s iva.esb.fishing_rod_use matches 1.. run scoreboard players reset @s iva.esb.fishing_rod_use
execute as @e[type=#arrows] if data entity @s weapon.components."minecraft:custom_data"."iva.esb.bow_damage" run data modify entity @s damage set from entity @s weapon.components."minecraft:custom_data"."iva.esb.bow_damage"
