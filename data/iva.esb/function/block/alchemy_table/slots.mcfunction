execute if block ~ ~ ~ barrel[open=false] run data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{iva.esb.empty_slot:1b}}}]
execute if block ~ ~ ~ barrel[open=false] if data block ~ ~ ~ Items[0] run summon item ~ ~1 ~ {Tags:[iva.esb.block.live_crafting_table_item],Item:{id:jigsaw,count:1,components:{item_model:"iva.esb:none"}}}
execute if block ~ ~ ~ barrel[open=false] if data block ~ ~ ~ Items[0] run data modify entity @n[type=item,tag=iva.esb.block.live_crafting_table_item,distance=..1] Item set from block ~ ~ ~ Items[0]
execute if block ~ ~ ~ barrel[open=false] if data block ~ ~ ~ Items[0] run tag @n[type=item,tag=iva.esb.block.live_crafting_table_item,distance=..1] remove iva.esb.block.live_crafting_table_item
execute if block ~ ~ ~ barrel[open=false] if data block ~ ~ ~ Items[0] run data remove block ~ ~ ~ Items[0]
