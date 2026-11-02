loot spawn ~.5 ~.5 ~.5 loot iva.esb:block/copper_pumpkin
item modify entity @n[type=item,nbt={Item:{id:"minecraft:waxed_weathered_copper_bulb"}},distance=..2] contents iva.esb:count_-1
execute positioned ~-.0001 ~.5 ~.5 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.-x]
execute positioned ~.5 ~.5 ~-.0001 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.-z]
execute positioned ~1.0001 ~.5 ~.5 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.x]
execute positioned ~.5 ~1.0001 ~.5 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.y]
execute positioned ~.5 ~.5 ~1.0001 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.z]
kill @s