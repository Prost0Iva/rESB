execute unless block ~ ~ ~ furnace run function iva.esb:block/copper_furnace/destroy

execute if block ~ ~ ~ furnace[lit=true] run function iva.esb:block/copper_furnace/turn_on
execute if block ~ ~ ~ furnace[lit=false] run function iva.esb:block/copper_furnace/turn_off
execute positioned ~ ~.5 ~ if block ~ ~ ~ furnace if predicate iva.esb:is_thunder run function iva.esb:block/copper_furnace/thunder

execute positioned ~ ~.5 ~ run function iva.esb:block/copper_furnace/craft_list

#give @p glow_item_frame[item_name={translate:"iva.esb:block.copper_furnace"},item_model="iva.esb:block/copper_furnace",custom_data={iva.esb.block:"copper_furnace"},entity_data={id:"glow_item_frame",Invisible:true,Silent:true,Tags:[iva.esb.block.copper_furnace_placer]}]