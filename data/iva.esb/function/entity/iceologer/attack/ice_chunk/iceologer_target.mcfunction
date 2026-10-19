scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute at @s as @n[type=!#iva.esb:no_mob,predicate=iva.esb:entity_id] on target run data modify entity @n[type=item_display,distance=...1,tag=iva.esb.entity.ice_chunk] Pos[0] set from entity @s Pos[0]
execute at @s as @n[type=!#iva.esb:no_mob,predicate=iva.esb:entity_id] on target run data modify entity @n[type=item_display,distance=...1,tag=iva.esb.entity.ice_chunk] Pos[2] set from entity @s Pos[2]
execute at @s run tp @s ~ ~8 ~