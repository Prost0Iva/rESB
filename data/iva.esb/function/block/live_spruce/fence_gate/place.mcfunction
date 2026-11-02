execute store result score #block_place_rotation iva.esb.block_place_param run data get entity @n[type=player,scores={iva.esb.glow_item_frame_use=1..},distance=..64] Rotation[0]
#n
execute if score #block_place_rotation iva.esb.block_place_param matches -180..-136 run summon item_display ~.5 ~.5 ~.5 {item:{id:"glow_item_frame",components:{item_model:"iva.esb:block/live_spruce",custom_model_data:{strings: ["fence_gate"]}}},Tags:[iva.esb.block.live_spruce_fence_gate,iva.esb.block.side.-y],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]},Rotation:[180.0f,0.0f]}
execute if score #block_place_rotation iva.esb.block_place_param matches 135..180 run summon item_display ~.5 ~.5 ~.5 {item:{id:"glow_item_frame",components:{item_model:"iva.esb:block/live_spruce",custom_model_data:{strings: ["fence_gate"]}}},Tags:[iva.esb.block.live_spruce_fence_gate,iva.esb.block.side.-y],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]},Rotation:[180.0f,0.0f]}
execute if score #block_place_rotation iva.esb.block_place_param matches -180..-136 run setblock ~ ~ ~ spruce_fence_gate[facing=north] keep
execute if score #block_place_rotation iva.esb.block_place_param matches 135..180 run setblock ~ ~ ~ spruce_fence_gate[facing=north] keep

#e
execute if score #block_place_rotation iva.esb.block_place_param matches -135..-46 run summon item_display ~.5 ~.5 ~.5 {item:{id:"glow_item_frame",components:{item_model:"iva.esb:block/live_spruce",custom_model_data:{strings: ["fence_gate"]}}},Tags:[iva.esb.block.live_spruce_fence_gate,iva.esb.block.side.-y],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]},Rotation:[270.0f,0.0f]}
execute if score #block_place_rotation iva.esb.block_place_param matches -135..-46 run setblock ~ ~ ~ spruce_fence_gate[facing=east] keep

#s
execute if score #block_place_rotation iva.esb.block_place_param matches -45..0 run summon item_display ~.5 ~.5 ~.5 {item:{id:"glow_item_frame",components:{item_model:"iva.esb:block/live_spruce",custom_model_data:{strings: ["fence_gate"]}}},Tags:[iva.esb.block.live_spruce_fence_gate,iva.esb.block.side.-y],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]}}
execute if score #block_place_rotation iva.esb.block_place_param matches 0..44 run summon item_display ~.5 ~.5 ~.5 {item:{id:"glow_item_frame",components:{item_model:"iva.esb:block/live_spruce",custom_model_data:{strings: ["fence_gate"]}}},Tags:[iva.esb.block.live_spruce_fence_gate,iva.esb.block.side.-y],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]}}
execute if score #block_place_rotation iva.esb.block_place_param matches -45..0 run setblock ~ ~ ~ spruce_fence_gate[facing=south] keep
execute if score #block_place_rotation iva.esb.block_place_param matches 0..44 run setblock ~ ~ ~ spruce_fence_gate[facing=south] keep

#w
execute if score #block_place_rotation iva.esb.block_place_param matches 45..134 run summon item_display ~.5 ~.5 ~.5 {item:{id:"glow_item_frame",components:{item_model:"iva.esb:block/live_spruce",custom_model_data:{strings: ["fence_gate"]}}},Tags:[iva.esb.block.live_spruce_fence_gate,iva.esb.block.side.-y],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]},Rotation:[90.0f,0.0f]}
execute if score #block_place_rotation iva.esb.block_place_param matches 45..134 run setblock ~ ~ ~ spruce_fence_gate[facing=west] keep
playsound minecraft:block.wood.place block @a ~ ~ ~ 1 .8
kill @s