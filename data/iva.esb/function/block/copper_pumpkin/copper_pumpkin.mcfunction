execute as @e[type=glow_item_frame,tag=iva.esb.block.copper_pumpkin_placer] at @s align xyz run function iva.esb:block/copper_pumpkin/place
execute as @e[type=item_display,tag=iva.esb.block.copper_pumpkin] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~ weathered_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb
execute as @e[type=item_display,tag=iva.esb.block.copper_pumpkin] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ waxed_weathered_copper_bulb run function iva.esb:block/copper_pumpkin/destroy

execute as @e[type=item_display,tag=iva.esb.block.copper_pumpkin] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~ waxed_weathered_copper_bulb[lit=true] run function iva.esb:block/copper_pumpkin/turn_on
execute as @e[type=item_display,tag=iva.esb.block.copper_pumpkin] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~ waxed_weathered_copper_bulb[lit=false] run function iva.esb:block/copper_pumpkin/turn_off


#give @p glow_item_frame[item_name={translate:"iva.esb:block.copper_pumpkin"},item_model="iva.esb:block/copper_pumpkin",custom_data={iva.esb.block:"copper_pumpkin"},entity_data={id:"glow_item_frame",Invisible:true,Silent:true,Tags:[iva.esb.block.copper_pumpkin_placer]}]