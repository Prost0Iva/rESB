execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_stairs_placer] at @s align xyz run function iva.esb:block/live_spruce/stairs/place
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_stairs] at @s align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ spruce_stairs run function iva.esb:block/live_spruce/stairs/destroy
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_stairs] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/live_spruce/stairs/shape
