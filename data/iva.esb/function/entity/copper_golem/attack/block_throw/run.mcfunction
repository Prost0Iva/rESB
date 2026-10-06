execute positioned ~ ~-1 ~ unless block ~ ~ ~ #air run function iva.esb:api/block_to_falling
execute positioned ~ ~-1 ~ align xyz positioned ~.5 ~ ~.5 run tag @n[type=falling_block,distance=..0] add iva.esb.entity.copper_golem_block
data modify entity @n[type=falling_block,tag=iva.esb.entity.copper_golem_block] Motion[1] set value 0.45f
data modify entity @n[type=falling_block,tag=iva.esb.entity.copper_golem_block] Rotation set from entity @s Rotation