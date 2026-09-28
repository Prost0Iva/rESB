tag @s remove iva.esb.block.live_spruce_log
tag @s add iva.esb.block.live_spruce_stripped
execute positioned ~-.0001 ~.5 ~.5 run data modify entity @n[type=item_display,distance=...5,tag=iva.esb.block.side.-x] item.components."minecraft:custom_model_data" set value {strings:["stripped"]}
execute positioned ~.5 ~.5 ~-.0001 run data modify entity @n[type=item_display,distance=...5,tag=iva.esb.block.side.-z] item.components."minecraft:custom_model_data" set value {strings:["stripped"]}
execute positioned ~1.0001 ~.5 ~.5 run data modify entity @n[type=item_display,distance=...5,tag=iva.esb.block.side.x] item.components."minecraft:custom_model_data" set value {strings:["stripped"]}
execute positioned ~.5 ~1.0001 ~.5 run data modify entity @n[type=item_display,distance=...5,tag=iva.esb.block.side.y] item.components."minecraft:custom_model_data" set value {strings:["stripped"]}
execute positioned ~.5 ~.5 ~1.0001 run data modify entity @n[type=item_display,distance=...5,tag=iva.esb.block.side.z] item.components."minecraft:custom_model_data" set value {strings:["stripped"]}