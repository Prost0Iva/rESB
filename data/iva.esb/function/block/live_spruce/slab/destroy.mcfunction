setblock ~ ~ ~ air destroy
loot spawn ~ ~ ~ loot iva.esb:block/live_spruce/slab
item modify entity @n[type=item,nbt={Item:{id:"minecraft:spruce_slab"}},distance=..1] contents iva.esb:count_-1
kill @s