function iva.esb:item/charged_copper/charged_copper

execute as @e[type=#arrows] if data entity @s weapon.components."minecraft:custom_data"."iva.esb.bow_damage" run data modify entity @s damage set from entity @s weapon.components."minecraft:custom_data"."iva.esb.bow_damage"
scoreboard players add @e[type=#arrows] iva.esb.arrow_effect_delay 1