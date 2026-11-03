tag @s add iva.esb.crafting_slot_item_checked
execute if data entity @s Item.components."minecraft:custom_data"{"iva.esb.block":"live_spruce_log"} run tag @s add iva.esb.live_spruce_log_item
execute if data entity @s Item.components."minecraft:custom_data"."iva.esb.craft_result" run kill @s
execute if data entity @s Item.components."minecraft:custom_data"."iva.esb.empty_slot" run kill @s