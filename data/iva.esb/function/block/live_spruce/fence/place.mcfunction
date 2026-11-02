summon item_display ~.5 ~.5 ~.5 {item:{id:"glow_item_frame",components:{item_model:"iva.esb:block/live_spruce",custom_model_data:{strings: ["fence"]}}},Tags:[iva.esb.block.live_spruce_fence,iva.esb.block.side.-y],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]}}
setblock ~ ~ ~ spruce_fence keep
playsound minecraft:block.wood.place block @a ~ ~ ~ 1 .8
kill @s