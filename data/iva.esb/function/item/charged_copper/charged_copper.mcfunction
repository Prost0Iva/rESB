execute as @a if predicate iva.esb:check_item/copper/copper_sword_mainhand if predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/charged_sword
execute as @a if predicate iva.esb:check_item/copper/charged_copper_sword_mainhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/sword

execute as @a if predicate iva.esb:check_item/copper/copper_bow_mainhand if predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/charged_bow
execute as @a if predicate iva.esb:check_item/copper/copper_bow_offhand if predicate iva.esb:is_thunder run item modify entity @s weapon.offhand iva.esb:copper/charged_bow
execute as @a if predicate iva.esb:check_item/copper/charged_copper_bow_mainhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/bow
execute as @a if predicate iva.esb:check_item/copper/charged_copper_bow_offhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.offhand iva.esb:copper/bow

execute as @e[type=#arrows,tag=!iva.esb.entity.copper_arrow] if data entity @s weapon.components."minecraft:custom_data"."iva.esb.bow_copper_arrows" run tag @s add iva.esb.entity.copper_arrow
execute as @e[type=#arrows,tag=!iva.esb.entity.copper_arrow] if predicate iva.esb:arrow_effect_check/copper_arrow run tag @s add iva.esb.entity.copper_arrow
execute as @e[type=#arrows,tag=iva.esb.entity.copper_arrow] at @s run particle electric_spark ~ ~ ~ 0 0 0 0.1 1 force

execute as @e[type=!#iva.esb:no_mob,nbt={active_effects:[{id:"minecraft:unluck",amplifier:23b,duration:29040}]}] run scoreboard players set @s iva.esb.effect.conductivity 100
execute as @e[type=!#iva.esb:no_mob,nbt={active_effects:[{id:"minecraft:unluck",amplifier:23b,duration:29040}]}] run effect clear @s unluck

execute as @a if predicate iva.esb:check_item/copper/copper_helmet_head if predicate iva.esb:is_thunder run item modify entity @s armor.head iva.esb:copper/charged_helmet
execute as @a if predicate iva.esb:check_item/copper/charged_copper_helmet_head unless predicate iva.esb:is_thunder run item modify entity @s armor.head iva.esb:copper/helmet
execute as @a if predicate iva.esb:check_item/copper/copper_chestplate_chest if predicate iva.esb:is_thunder run item modify entity @s armor.chest iva.esb:copper/charged_chestplate
execute as @a if predicate iva.esb:check_item/copper/charged_copper_chestplate_chest unless predicate iva.esb:is_thunder run item modify entity @s armor.chest iva.esb:copper/chestplate
execute as @a if predicate iva.esb:check_item/copper/copper_leggings_legs if predicate iva.esb:is_thunder run item modify entity @s armor.legs iva.esb:copper/charged_leggings
execute as @a if predicate iva.esb:check_item/copper/charged_copper_leggings_legs unless predicate iva.esb:is_thunder run item modify entity @s armor.legs iva.esb:copper/leggings
execute as @a if predicate iva.esb:check_item/copper/copper_boots_feet if predicate iva.esb:is_thunder run item modify entity @s armor.feet iva.esb:copper/charged_boots
execute as @a if predicate iva.esb:check_item/copper/charged_copper_boots_feet unless predicate iva.esb:is_thunder run item modify entity @s armor.feet iva.esb:copper/boots

execute as @a if predicate iva.esb:check_item/copper/charged_armor run scoreboard players set @s iva.esb.effect.conductivity 2

execute as @a if predicate iva.esb:check_item/copper/copper_pickaxe_mainhand if predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/charged_pickaxe
execute as @a if predicate iva.esb:check_item/copper/charged_copper_pickaxe_mainhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/pickaxe