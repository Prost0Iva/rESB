execute as @e[type=glow_item_frame,tag=iva.esb.block.copper_furnace_placer] at @s align xyz run function iva.esb:block/copper_furnace/place
execute as @e[type=item_display,tag=iva.esb.block.copper_furnace] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ furnace run function iva.esb:block/copper_furnace/destroy

execute as @e[type=item_display,tag=iva.esb.block.copper_furnace] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~ furnace[lit=true] run function iva.esb:block/copper_furnace/turn_on
execute as @e[type=item_display,tag=iva.esb.block.copper_furnace] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~ furnace[lit=false] run function iva.esb:block/copper_furnace/turn_off
execute as @e[type=item_display,tag=iva.esb.block.copper_furnace] at @s align xyz positioned ~ ~1.5 ~ if block ~ ~ ~ furnace if predicate iva.esb:is_thunder run function iva.esb:block/copper_furnace/thunder

execute as @e[type=item_display,tag=iva.esb.block.copper_furnace] at @s align xyz positioned ~ ~1.5 ~ run function iva.esb:block/copper_furnace/craft_list

#give @p glow_item_frame[item_name={translate:"iva.esb:block.copper_furnace"},item_model="iva.esb:block/copper_furnace",custom_data={iva.esb.block:"copper_furnace"},entity_data={id:"glow_item_frame",Invisible:true,Silent:true,Tags:[iva.esb.block.copper_furnace_placer]}]