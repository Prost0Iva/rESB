function iva.esb:item/charged_copper/charged_copper
function iva.esb:item/ice_diver/ice_diver
function iva.esb:item/frozen_catcher/frozen_catcher

execute as @a if score @s iva.esb.fishing_rod_use matches 1.. run scoreboard players reset @s iva.esb.fishing_rod_use
execute as @e[type=#arrows] if data entity @s weapon.components."minecraft:custom_data"."iva.esb.bow_damage" run data modify entity @s damage set from entity @s weapon.components."minecraft:custom_data"."iva.esb.bow_damage"