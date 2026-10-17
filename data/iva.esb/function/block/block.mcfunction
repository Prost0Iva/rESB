function iva.esb:block/live_crafting_table/live_crafting_table
function iva.esb:block/copper_pumpkin/copper_pumpkin
function iva.esb:block/live_spruce/live_spruce
function iva.esb:block/stalum_ore/stalum_ore
function iva.esb:block/copper_furnace/copper_furnace
execute as @a[scores={iva.esb.glow_item_frame_use=1..}] run scoreboard players reset @s iva.esb.glow_item_frame_use
execute as @a[scores={iva.esb.gray_glazed_terracotta_mined=1..}] run scoreboard players reset @s iva.esb.gray_glazed_terracotta_mined
