execute as @e[type=glow_item_frame,tag=iva.esb.block.copper_pumpkin_placer] at @s align xyz run function iva.esb:block/copper_pumpkin/place

execute as @e[type=item_display,tag=iva.esb.block.copper_pumpkin] at @s align xyz positioned ~.5 ~1.5 ~.5 run function iva.esb:block/detect_move
execute as @e[type=item_display,tag=iva.esb.block.copper_pumpkin,tag=!iva.esb.block_move] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ waxed_weathered_copper_bulb run function iva.esb:block/copper_pumpkin/destroy

execute as @e[type=item_display,tag=iva.esb.block.copper_pumpkin] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~ weathered_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb
execute as @e[type=item_display,tag=iva.esb.block.copper_pumpkin] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~ waxed_weathered_copper_bulb[lit=true] run function iva.esb:block/copper_pumpkin/turn_on
execute as @e[type=item_display,tag=iva.esb.block.copper_pumpkin] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~ waxed_weathered_copper_bulb[lit=false] run function iva.esb:block/copper_pumpkin/turn_off
execute as @e[type=item_display,tag=iva.esb.block.copper_pumpkin] at @s align xyz positioned ~.5 ~1 ~.5 if block ~ ~ ~ waxed_weathered_copper_bulb[lit=true] if block ~ ~1 ~ lightning_rod if block ~ ~-1 ~ copper_block run function iva.esb:block/copper_pumpkin/summon_copper_golem
#give @p glow_item_frame[item_name={translate:"iva.esb:block.copper_pumpkin"},item_model="iva.esb:block/copper_pumpkin",custom_data={iva.esb.block:"copper_pumpkin"},entity_data={id:"glow_item_frame",Invisible:true,Silent:true,Tags:[iva.esb.block.copper_pumpkin_placer]}]