execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_door_placer] at @s align xyz if block ~ ~ ~ #air if block ~ ~1 ~ #air run function iva.esb:block/live_spruce/door/place
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_door_placer] at @s align xyz unless block ~ ~ ~ #air run function iva.esb:block/live_spruce/door/destroy
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_door_placer] at @s align xyz unless block ~ ~1 ~ #air run function iva.esb:block/live_spruce/door/destroy
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_door] at @s align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ spruce_door run function iva.esb:block/live_spruce/door/destroy
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_door] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/live_spruce/door/shape
