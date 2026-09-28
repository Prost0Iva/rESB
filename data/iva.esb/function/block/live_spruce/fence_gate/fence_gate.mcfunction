execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_fence_gate_placer] at @s align xyz if block ~ ~ ~ #air run function iva.esb:block/live_spruce/fence_gate/place
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_fence_gate_placer] at @s align xyz unless block ~ ~ ~ #air run function iva.esb:block/live_spruce/fence_gate/destroy
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_fence_gate] at @s align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ spruce_fence_gate run function iva.esb:block/live_spruce/fence_gate/destroy
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_fence_gate] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/live_spruce/fence_gate/shape
