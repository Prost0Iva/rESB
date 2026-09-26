execute as @a if items entity @s iva.esb:player jigsaw[custom_data={iva.esb.empty_slot:1b}] run clear @s jigsaw[custom_data={iva.esb.empty_slot:1b}]
kill @e[type=item,distance=..64,nbt={Item:{components:{"minecraft:custom_data":{iva.esb.empty_slot:1b}}}}]

execute if block ~ ~ ~ barrel[open=false] run data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{iva.esb.empty_slot:1b}}}]
execute if block ~ ~ ~ barrel[open=false] if data block ~ ~ ~ Items[0] run summon item ~ ~1 ~ {Tags:[iva.esb.block.live_crafting_table_item],Item:{id:jigsaw,count:1,components:{item_model:"iva.esb:none"}}}
execute if block ~ ~ ~ barrel[open=false] if data block ~ ~ ~ Items[0] run data modify entity @n[type=item,tag=iva.esb.block.live_crafting_table_item,distance=..1] Item set from block ~ ~ ~ Items[0]
execute if block ~ ~ ~ barrel[open=false] if data block ~ ~ ~ Items[0] run tag @n[type=item,tag=iva.esb.block.live_crafting_table_item,distance=..1] remove iva.esb.block.live_crafting_table_item
execute if block ~ ~ ~ barrel[open=false] if data block ~ ~ ~ Items[0] run data remove block ~ ~ ~ Items[0]

execute if block ~ ~ ~ barrel[open=true] unless items block ~ ~ ~ iva.esb:live_crafting_table * run item fill block ~ ~ ~ iva.esb:live_crafting_table with jigsaw[custom_data={iva.esb.empty_slot:1b},tooltip_display={hide_tooltip:1b},item_model="iva.esb:none"]
execute if block ~ ~ ~ barrel[open=true] unless items block ~ ~ ~ container.15 * run item fill block ~ ~ ~ container.15 with jigsaw[custom_data={iva.esb.empty_slot:1b},tooltip_display={hide_tooltip:1b},item_model="iva.esb:none"]
execute if block ~ ~ ~ barrel[open=true] if predicate iva.esb:check_slot_15 run item fill block ~ ~ ~ container.15 with jigsaw[custom_data={iva.esb.empty_slot:1b},tooltip_display={hide_tooltip:1b},item_model="iva.esb:none"]
