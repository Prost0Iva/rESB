execute positioned ~-.0001 ~.5 ~.5 run data modify entity @n[type=item_display,distance=...5,tag=iva.esb.block.side.-x] item.components."minecraft:custom_model_data" set value {}
execute positioned ~.5 ~.5 ~-.0001 run data modify entity @n[type=item_display,distance=...5,tag=iva.esb.block.side.-z] item.components."minecraft:custom_model_data" set value {}
execute positioned ~1.0001 ~.5 ~.5 run data modify entity @n[type=item_display,distance=...5,tag=iva.esb.block.side.x] item.components."minecraft:custom_model_data" set value {}
execute positioned ~.5 ~1.0001 ~.5 run data modify entity @n[type=item_display,distance=...5,tag=iva.esb.block.side.y] item.components."minecraft:custom_model_data" set value {}
execute positioned ~.5 ~.5 ~1.0001 run data modify entity @n[type=item_display,distance=...5,tag=iva.esb.block.side.z] item.components."minecraft:custom_model_data" set value {}
data modify entity @s item.components."minecraft:custom_model_data" set value {}