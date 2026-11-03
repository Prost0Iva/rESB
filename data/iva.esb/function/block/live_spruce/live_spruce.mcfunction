#planks
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_planks_placer] at @s align xyz run function iva.esb:block/live_spruce/planks/place
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_planks] at @s align xyz positioned ~ ~1 ~ run function iva.esb:block/live_spruce/planks/planks
#log
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_log_placer] at @s align xyz run function iva.esb:block/live_spruce/log/place
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_log] at @s align xyz positioned ~ ~1 ~ run function iva.esb:block/live_spruce/log/log
#stripped
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_stripped_placer] at @s align xyz run function iva.esb:block/live_spruce/stripped/place
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_stripped] at @s align xyz positioned ~ ~1 ~ run function iva.esb:block/live_spruce/stripped/stripped
#stairs
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_stairs_placer] at @s align xyz run function iva.esb:block/live_spruce/stairs/place
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_stairs] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/live_spruce/stairs/stairs
#slab
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_slab_placer] at @s align xyz run function iva.esb:block/live_spruce/slab/place
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_slab] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/live_spruce/slab/slab
#fence
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_fence_placer] at @s align xyz run function iva.esb:block/live_spruce/fence/placer
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_fence] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/live_spruce/fence/fence
#fence_gate
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_fence_gate_placer] at @s align xyz run function iva.esb:block/live_spruce/fence_gate/placer
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_fence_gate] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/live_spruce/fence_gate/fence_gate
#door
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_door_placer] at @s align xyz run function iva.esb:block/live_spruce/door/placer
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_door] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/live_spruce/door/door
#trapdoor
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_trapdoor_placer] at @s align xyz run function iva.esb:block/live_spruce/trapdoor/placer
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_trapdoor] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/live_spruce/trapdoor/trapdoor
#pressure_plate
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_pressure_plate_placer] at @s align xyz run function iva.esb:block/live_spruce/pressure_plate/placer
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_pressure_plate] at @s align xyz run function iva.esb:block/live_spruce/pressure_plate/pressure_plate
#button
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_spruce_button_placer] at @s align xyz run function iva.esb:block/live_spruce/button/placer
execute as @e[type=item_display,tag=iva.esb.block.live_spruce_button] at @s align xyz positioned ~.5 ~.5 ~.5 run function iva.esb:block/live_spruce/button/button