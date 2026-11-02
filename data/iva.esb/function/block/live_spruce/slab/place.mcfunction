execute store result score #block_top_position iva.esb.block_place_param if entity @n[type=player,scores={iva.esb.glow_item_frame_use=1..},distance=..64,predicate=iva.esb:on_shift]

execute if entity @s[nbt={Facing:1b},tag=!iva.esb.double_placer] positioned ~.5 ~-.5 ~.5 if entity @n[type=item_display,tag=iva.esb.block.live_spruce_slab,tag=iva.esb.block.type.bottom,distance=...1] run function iva.esb:block/live_spruce/slab/place_double
execute if entity @s[nbt={Facing:1b},tag=!iva.esb.double_placer] positioned ~.5 ~.5 ~.5 if entity @n[type=item_display,tag=iva.esb.block.live_spruce_slab,tag=iva.esb.block.type.top,distance=...1] run function iva.esb:block/live_spruce/slab/place_double
execute if entity @s[nbt={Facing:0b},tag=!iva.esb.double_placer] positioned ~.5 ~1.5 ~.5 if entity @n[type=item_display,tag=iva.esb.block.live_spruce_slab,tag=iva.esb.block.type.top,distance=...1] run function iva.esb:block/live_spruce/slab/place_double
execute if entity @s[nbt={Facing:0b},tag=!iva.esb.double_placer] positioned ~.5 ~.5 ~.5 if entity @n[type=item_display,tag=iva.esb.block.live_spruce_slab,tag=iva.esb.block.type.bottom,distance=...1] run function iva.esb:block/live_spruce/slab/place_double

execute if entity @s[tag=!iva.esb.double_placer,nbt={Facing:1b}] run summon item_display ~.5 ~.5 ~.5 {item:{id:"glow_item_frame",components:{item_model:"iva.esb:block/live_spruce",custom_model_data:{strings: ["slab_bottom"]}}},Tags:[iva.esb.block.live_spruce_slab,iva.esb.block.type.bottom],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]}}
execute if entity @s[tag=!iva.esb.double_placer,nbt={Facing:1b}] run setblock ~ ~ ~ spruce_slab[type=bottom] keep

execute if entity @s[tag=!iva.esb.double_placer,nbt={Facing:0b}] run summon item_display ~.5 ~.5 ~.5 {item:{id:"glow_item_frame",components:{item_model:"iva.esb:block/live_spruce",custom_model_data:{strings: ["slab_top"]}}},Tags:[iva.esb.block.live_spruce_slab,iva.esb.block.type.top],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]}}
execute if entity @s[tag=!iva.esb.double_placer,nbt={Facing:0b}] run setblock ~ ~ ~ spruce_slab[type=top] keep

execute if score #block_top_position iva.esb.block_place_param matches 0 if entity @s[tag=!iva.esb.double_placer,nbt=!{Facing:1b},nbt=!{Facing:0b}] run summon item_display ~.5 ~.5 ~.5 {item:{id:"glow_item_frame",components:{item_model:"iva.esb:block/live_spruce",custom_model_data:{strings: ["slab_bottom"]}}},Tags:[iva.esb.block.live_spruce_slab,iva.esb.block.type.bottom],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]}}
execute if score #block_top_position iva.esb.block_place_param matches 0 if entity @s[tag=!iva.esb.double_placer,nbt=!{Facing:1b},nbt=!{Facing:0b}] run setblock ~ ~ ~ spruce_slab[type=bottom] keep

execute if score #block_top_position iva.esb.block_place_param matches 1 if entity @s[tag=!iva.esb.double_placer,nbt=!{Facing:1b},nbt=!{Facing:0b}] run summon item_display ~.5 ~.5 ~.5 {item:{id:"glow_item_frame",components:{item_model:"iva.esb:block/live_spruce",custom_model_data:{strings: ["slab_top"]}}},Tags:[iva.esb.block.live_spruce_slab,iva.esb.block.type.top],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]}}
execute if score #block_top_position iva.esb.block_place_param matches 1 if entity @s[tag=!iva.esb.double_placer,nbt=!{Facing:1b},nbt=!{Facing:0b}] run setblock ~ ~ ~ spruce_slab[type=top] keep

playsound minecraft:block.wood.place block @a ~ ~ ~ 1 .8
kill