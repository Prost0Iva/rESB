execute as @a if predicate iva.esb:check_item/copper_sword_mainhand if predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/charged_sword
execute as @a if predicate iva.esb:check_item/charged_copper_sword_mainhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/sword

execute as @a if predicate iva.esb:check_item/copper_bow_mainhand if predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/charged_bow
execute as @a if predicate iva.esb:check_item/copper_bow_offhand if predicate iva.esb:is_thunder run item modify entity @s weapon.offhand iva.esb:copper/charged_bow
execute as @a if predicate iva.esb:check_item/charged_copper_bow_mainhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/bow
execute as @a if predicate iva.esb:check_item/charged_copper_bow_offhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.offhand iva.esb:copper/bow

execute as @e[type=#arrows] if data entity @s weapon.components."minecraft:custom_data"."iva.esb.bow_copper_arrows" run tag @s add iva.esb.entity.copper_arrow

execute as @e[type=#arrows,tag=iva.esb.entity.copper_arrow] at @s run particle electric_spark ~ ~ ~ 0 0 0 0.1 1 force
#!execute as @e[type=#arrows,tag=iva.esb.entity.copper_arrow] unless data entity @s inBlockState if score @s iva.esb.arrow_effect_delay matches 5.. at @s positioned ~-.5 ~-.5 ~-.5 as @e[type=!#iva.esb:no_mob,dx=0] run scoreboard players set @s iva.esb.effect.conductivity 100