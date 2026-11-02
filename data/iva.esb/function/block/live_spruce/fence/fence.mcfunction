execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_fence_placer] at @s align xyz if block ~ ~ ~ #air run function iva.esb:block/live_spruce/fence/place
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_fence_placer] at @s align xyz unless block ~ ~ ~ #air run function iva.esb:block/live_spruce/fence/destroy

execute as @e[type=item_display,tag=iva.esb.block.live_spruce_fence] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/detect_move
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_fence,tag=!iva.esb.block_move] at @s align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ spruce_fence run function iva.esb:block/live_spruce/fence/destroy

execute as @e[type=item_display,tag=iva.esb.block.live_spruce_fence] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/live_spruce/fence/shape