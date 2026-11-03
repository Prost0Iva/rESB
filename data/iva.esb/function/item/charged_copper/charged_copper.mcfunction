execute if predicate iva.esb:check_item/copper/copper_sword_mainhand if predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/charged_sword
execute if predicate iva.esb:check_item/copper/charged_copper_sword_mainhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/sword

execute if predicate iva.esb:check_item/copper/copper_bow_mainhand if predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/charged_bow
execute if predicate iva.esb:check_item/copper/copper_bow_offhand if predicate iva.esb:is_thunder run item modify entity @s weapon.offhand iva.esb:copper/charged_bow
execute if predicate iva.esb:check_item/copper/charged_copper_bow_mainhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/bow
execute if predicate iva.esb:check_item/copper/charged_copper_bow_offhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.offhand iva.esb:copper/bow

execute if predicate iva.esb:arrow_effect_check/copper_arrow_hit_entity run scoreboard players set @s iva.esb.effect.conductivity 100
execute if predicate iva.esb:arrow_effect_check/copper_arrow_hit_entity run effect clear @s unluck

execute if predicate iva.esb:check_item/copper/copper_helmet_head if predicate iva.esb:is_thunder run item modify entity @s armor.head iva.esb:copper/charged_helmet
execute if predicate iva.esb:check_item/copper/charged_copper_helmet_head unless predicate iva.esb:is_thunder run item modify entity @s armor.head iva.esb:copper/helmet
execute if predicate iva.esb:check_item/copper/copper_chestplate_chest if predicate iva.esb:is_thunder run item modify entity @s armor.chest iva.esb:copper/charged_chestplate
execute if predicate iva.esb:check_item/copper/charged_copper_chestplate_chest unless predicate iva.esb:is_thunder run item modify entity @s armor.chest iva.esb:copper/chestplate
execute if predicate iva.esb:check_item/copper/copper_leggings_legs if predicate iva.esb:is_thunder run item modify entity @s armor.legs iva.esb:copper/charged_leggings
execute if predicate iva.esb:check_item/copper/charged_copper_leggings_legs unless predicate iva.esb:is_thunder run item modify entity @s armor.legs iva.esb:copper/leggings
execute if predicate iva.esb:check_item/copper/copper_boots_feet if predicate iva.esb:is_thunder run item modify entity @s armor.feet iva.esb:copper/charged_boots
execute if predicate iva.esb:check_item/copper/charged_copper_boots_feet unless predicate iva.esb:is_thunder run item modify entity @s armor.feet iva.esb:copper/boots

execute if predicate iva.esb:check_item/copper/charged_armor run scoreboard players set @s iva.esb.effect.conductivity 2

execute if predicate iva.esb:check_item/copper/copper_pickaxe_mainhand if predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/charged_pickaxe
execute if predicate iva.esb:check_item/copper/charged_copper_pickaxe_mainhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/pickaxe

execute if predicate iva.esb:check_item/copper/golem_fist_mainhand if predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/charged_golem_fist
execute if predicate iva.esb:check_item/copper/golem_fist_offhand if predicate iva.esb:is_thunder run item modify entity @s weapon.offhand iva.esb:copper/charged_golem_fist
execute if predicate iva.esb:check_item/copper/charged_golem_fist_mainhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.mainhand iva.esb:copper/golem_fist
execute if predicate iva.esb:check_item/copper/charged_golem_fist_offhand unless predicate iva.esb:is_thunder run item modify entity @s weapon.offhand iva.esb:copper/golem_fist