execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_trapdoor_placer] at @s align xyz if block ~ ~ ~ #air run function iva.esb:block/live_spruce/trapdoor/place
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_trapdoor_placer] at @s align xyz unless block ~ ~ ~ #air run function iva.esb:block/live_spruce/trapdoor/destroy
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_trapdoor] at @s align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ spruce_trapdoor run function iva.esb:block/live_spruce/trapdoor/destroy
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_trapdoor] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/live_spruce/trapdoor/shape
