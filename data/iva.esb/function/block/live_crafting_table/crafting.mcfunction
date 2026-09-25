function iva.esb:block/live_crafting_table/craft_list
kill @e[type=item,distance=..64,nbt={Item:{components:{"minecraft:custom_data":{"iva.esb.craft_result":1b}}}}]
execute as @a if predicate iva.esb:player_has_craft_result run item modify entity @s iva.esb:player iva.esb:crafting_result