#live_crafting_table
execute as @e[type=glow_item_frame,tag=iva.esb.block.live_crafting_table_placer] at @s align xyz run function iva.esb:block/live_crafting_table/place
execute as @e[type=item_display,tag=iva.esb.block.live_crafting_table] at @s align xyz run function iva.esb:block/live_crafting_table/live_crafting_table
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"iva.esb.block":"live_spruce_log"}}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ crafting_table align xyz run function iva.esb:block/live_crafting_table/crafting_table_transform
#copper_pumpkin
execute as @e[type=glow_item_frame,tag=iva.esb.block.copper_pumpkin_placer] at @s align xyz run function iva.esb:block/copper_pumpkin/place
execute as @e[type=item_display,tag=iva.esb.block.copper_pumpkin] at @s align xyz run function iva.esb:block/copper_pumpkin/copper_pumpkin
#live_spruce
function iva.esb:block/live_spruce/live_spruce
#stalum_ore
execute as @e[type=glow_item_frame,tag=iva.esb.block.stalum_ore_placer] at @s align xyz run function iva.esb:block/stalum_ore/place
execute as @e[type=item_display,tag=iva.esb.block.stalum_ore] at @s align xyz positioned ~ ~1 ~ run function iva.esb:block/stalum_ore/stalum_ore
#copper_furnace
execute as @e[type=glow_item_frame,tag=iva.esb.block.copper_furnace_placer] at @s align xyz run function iva.esb:block/copper_furnace/place
execute as @e[type=item_display,tag=iva.esb.block.copper_furnace] at @s align xyz positioned ~ ~1 ~ run function iva.esb:block/copper_furnace/copper_furnace

#api
execute as @a[scores={iva.esb.glow_item_frame_use=1..}] run scoreboard players reset @s iva.esb.glow_item_frame_use
execute as @a[scores={iva.esb.gray_glazed_terracotta_mined=1..}] run scoreboard players reset @s iva.esb.gray_glazed_terracotta_mined
