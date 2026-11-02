execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_planks_placer] at @s align xyz run function iva.esb:block/live_spruce/planks/place

execute as @e[type=item_display,tag=iva.esb.block.live_spruce_planks] at @s align xyz positioned ~.5 ~1.5 ~.5 run function iva.esb:block/detect_move
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_planks,tag=!iva.esb.block_move] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ spruce_planks run function iva.esb:block/live_spruce/planks/destroy
