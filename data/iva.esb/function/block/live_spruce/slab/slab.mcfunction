execute if entity @s[tag=!iva.esb.block.type.double] run function iva.esb:block/detect_move
execute if entity @s[tag=iva.esb.block.type.double] positioned ~ ~1 ~ run function iva.esb:block/detect_move
execute if entity @s[tag=!iva.esb.block.type.double,tag=!iva.esb.block_move] unless block ~ ~ ~ spruce_slab run function iva.esb:block/live_spruce/slab/destroy
execute if entity @s[tag=iva.esb.block.type.double,tag=!iva.esb.block_move] positioned ~-.5 ~.5 ~-.5 unless block ~ ~ ~ spruce_slab run function iva.esb:block/live_spruce/slab/destroy_double
execute if entity @s[tag=!iva.esb.block.type.double,tag=!iva.esb.block_move] if block ~ ~ ~ spruce_slab[type=double] run function iva.esb:block/live_spruce/slab/destroy
