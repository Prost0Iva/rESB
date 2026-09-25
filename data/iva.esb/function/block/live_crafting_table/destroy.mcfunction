loot spawn ~.5 ~.5 ~.5 loot iva.esb:block/live_crafting_table
execute positioned ~.5 ~.5 ~.5 run kill @n[type=item,distance=...5,nbt={Item:{id:"minecraft:barrel",count:1}}]
execute positioned ~-.0001 ~.5 ~.5 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.-x]
execute positioned ~.5 ~.5 ~-.0001 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.-z]
execute positioned ~1.0001 ~.5 ~.5 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.x]
execute positioned ~.5 ~1.0001 ~.5 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.y]
execute positioned ~.5 ~.5 ~1.0001 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.z]
kill @s