 execute positioned ~ ~1 ~ unless block ~ ~ ~ barrel run function iva.esb:block/live_crafting_table/destroy
execute positioned ~ ~1 ~ if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ air destroy
execute positioned ~.5 ~1 ~.5 run function iva.esb:block/live_crafting_table/slots
execute positioned ~.5 ~1 ~.5 run function iva.esb:block/live_crafting_table/crafting

#give @p glow_item_frame[item_name={translate:"iva.esb:block.live_crafting_table"},item_model="iva.esb:block/live_crafting_table",custom_data={iva.esb.block:"live_crafting_table"},entity_data={id:"glow_item_frame",Invisible:true,Silent:true,Tags:[iva.esb.block.live_crafting_table_placer]}]