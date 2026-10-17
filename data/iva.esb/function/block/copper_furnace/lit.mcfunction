execute if items block ~ ~ ~ container.1 #boats run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_boats
execute if items block ~ ~ ~ container.1 #boats run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_boats
execute if items block ~ ~ ~ container.1 bamboo run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_bamboo
execute if items block ~ ~ ~ container.1 bamboo run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_bamboo
execute if items block ~ ~ ~ container.1 blaze_rod run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_blaze_rod
execute if items block ~ ~ ~ container.1 blaze_rod run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_blaze_rod
execute if items block ~ ~ ~ container.1 #coals run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_coal
execute if items block ~ ~ ~ container.1 #coals run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_coal
execute if items block ~ ~ ~ container.1 coal_block run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_coal_block
execute if items block ~ ~ ~ container.1 coal_block run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_coal_block
execute if items block ~ ~ ~ container.1 dried_kelp_block run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_dried_kelp_block
execute if items block ~ ~ ~ container.1 dried_kelp_block run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_dried_kelp_block
execute if items block ~ ~ ~ container.1 #iva.esb:dry_plants run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_dry_plants
execute if items block ~ ~ ~ container.1 #iva.esb:dry_plants run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_dry_plants
execute if items block ~ ~ ~ container.1 #hanging_signs run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_hanging_signs
execute if items block ~ ~ ~ container.1 #hanging_signs run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_hanging_signs
execute if items block ~ ~ ~ container.1 lava_bucket run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_lava_bucket
execute if items block ~ ~ ~ container.1 lava_bucket run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_lava_bucket
execute if items block ~ ~ ~ container.1 mangrove_roots run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_roots
execute if items block ~ ~ ~ container.1 mangrove_roots run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_roots
execute if items block ~ ~ ~ container.1 lava_bucket run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_lava_bucket
execute if items block ~ ~ ~ container.1 lava_bucket run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_lava_bucket
execute if items block ~ ~ ~ container.1 #iva.esb:wood_blocks run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_wood_blocks
execute if items block ~ ~ ~ container.1 #iva.esb:wood_blocks run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_wood_blocks
execute if items block ~ ~ ~ container.1 #iva.esb:wood_items_extra_small run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_wood_items_extra_small
execute if items block ~ ~ ~ container.1 #iva.esb:wood_items_extra_small run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_wood_items_extra_small
execute if items block ~ ~ ~ container.1 #iva.esb:wood_items_large run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_wood_items_large
execute if items block ~ ~ ~ container.1 #iva.esb:wood_items_large run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_wood_items_large
execute if items block ~ ~ ~ container.1 #iva.esb:wood_items_small run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_wood_items_small
execute if items block ~ ~ ~ container.1 #iva.esb:wood_items_small run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_wood_items_small
execute if items block ~ ~ ~ container.1 #iva.esb:wood_slabs run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_wood_slabs
execute if items block ~ ~ ~ container.1 #iva.esb:wood_slabs run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_wood_slabs
execute if items block ~ ~ ~ container.1 #iva.esb:wool run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_wool
execute if items block ~ ~ ~ container.1 #iva.esb:wool run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_wool
execute if items block ~ ~ ~ container.1 #wool_carpets run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_wool_carpets
execute if items block ~ ~ ~ container.1 #wool_carpets run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_wool_carpets
execute if items block ~ ~ ~ container.1 #wool_slabs run data modify block ~ ~ ~ lit_total_time set compute block ~ ~ ~ integer cooking/time_wool_slabs
execute if items block ~ ~ ~ container.1 #wool_slabs run data modify block ~ ~ ~ lit_time_remaining set compute block ~ ~ ~ integer cooking/time_wool_slabs

data modify block ~ ~ ~ lit_total_time set from block ~ ~ ~ Items[{Slot:1b}].components."minecraft:cooking_fuel".burn_time
data modify block ~ ~ ~ lit_time_remaining set from block ~ ~ ~ Items[{Slot:1b}].components."minecraft:cooking_fuel".burn_time

execute store result score @s iva.esb.furnace_lit_time run data get block ~ ~ ~ lit_time_remaining
execute if score @s iva.esb.furnace_lit_time matches 1.. unless items block ~ ~ ~ container.1 lava_bucket run item modify block ~ ~ ~ container.1 iva.esb:count_-1
execute if score @s iva.esb.furnace_lit_time matches 1.. if items block ~ ~ ~ container.1 lava_bucket run item replace block ~ ~ ~ container.1 with bucket

execute if score @s iva.esb.furnace_lit_time matches 1.. if block ~ ~ ~ furnace[facing=north] run setblock ~ ~ ~ furnace[lit=true,facing=north]
execute if score @s iva.esb.furnace_lit_time matches 1.. if block ~ ~ ~ furnace[facing=south] run setblock ~ ~ ~ furnace[lit=true,facing=south]
execute if score @s iva.esb.furnace_lit_time matches 1.. if block ~ ~ ~ furnace[facing=west] run setblock ~ ~ ~ furnace[lit=true,facing=west]
execute if score @s iva.esb.furnace_lit_time matches 1.. if block ~ ~ ~ furnace[facing=east] run setblock ~ ~ ~ furnace[lit=true,facing=east]