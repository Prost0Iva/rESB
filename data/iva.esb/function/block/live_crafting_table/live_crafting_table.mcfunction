execute as @e[type=glow_item_frame,tag=iva.esb.block.live_crafting_table_placer] at @s align xyz run function iva.esb:block/live_crafting_table/place
execute as @e[type=item_display,tag=iva.esb.block.live_crafting_table] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ barrel run function iva.esb:block/live_crafting_table/destroy
execute as @e[type=item_display,tag=iva.esb.block.live_crafting_table] at @s align xyz positioned ~ ~1 ~ if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ air destroy
execute as @e[type=item_display,tag=iva.esb.block.live_crafting_table] at @s align xyz positioned ~.5 ~1 ~.5 run function iva.esb:block/live_crafting_table/slots
execute as @e[type=item_display,tag=iva.esb.block.live_crafting_table] at @s align xyz positioned ~.5 ~1 ~.5 run function iva.esb:block/live_crafting_table/crafting

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"iva.esb.block":"live_spruce_log"}}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ crafting_table align xyz run function iva.esb:block/live_crafting_table/crafting_table_transform

#give @p glow_item_frame[item_name={translate:"iva.esb:block.live_crafting_table"},item_model="iva.esb:block/live_crafting_table",custom_data={iva.esb.block:"live_crafting_table"},entity_data={id:"glow_item_frame",Invisible:true,Silent:true,Tags:[iva.esb.block.live_crafting_table_placer]}]