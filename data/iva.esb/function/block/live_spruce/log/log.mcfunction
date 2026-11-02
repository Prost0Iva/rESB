execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_log_placer] at @s align xyz run function iva.esb:block/live_spruce/log/place

execute as @e[type=item_display,tag=iva.esb.block.live_spruce_log] at @s align xyz positioned ~.5 ~1.5 ~.5 run function iva.esb:block/detect_move
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_log,tag=!iva.esb.block_move] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ spruce_log unless block ~ ~ ~ stripped_spruce_log run function iva.esb:block/live_spruce/log/destroy

execute as @e[type=item_display,tag=iva.esb.block.live_spruce_log] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~ stripped_spruce_log run function iva.esb:block/live_spruce/log/stripped
