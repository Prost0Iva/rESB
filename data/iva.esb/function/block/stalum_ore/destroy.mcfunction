execute if entity @n[type=player,distance=..64,scores={iva.esb.gray_glazed_terracotta_mined=1..},predicate=iva.esb:check_item/pickaxe_level/relict] run loot spawn ~.5 ~.5 ~.5 loot iva.esb:block/stalum_ore/raw_stalum
#loot spawn ~.5 ~.5 ~.5 loot iva.esb:block/
item modify entity @n[type=item,nbt={Item:{id:"minecraft:gray_glazed_terracotta"}},distance=..2] contents iva.esb:count_-1
execute positioned ~-.0001 ~.5 ~.5 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.-x]
execute positioned ~.5 ~.5 ~-.0001 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.-z]
execute positioned ~1.0001 ~.5 ~.5 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.x]
execute positioned ~.5 ~1.0001 ~.5 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.y]
execute positioned ~.5 ~.5 ~1.0001 run kill @n[type=item_display,distance=...5,tag=iva.esb.block.side.z]
kill @s