execute positioned ~.5 ~.5 ~.5 run function iva.esb:block/detect_move
execute if entity @s[tag=!iva.esb.block_move] unless block ~ ~ ~ spruce_log unless block ~ ~ ~ stripped_spruce_log run function iva.esb:block/live_spruce/log/destroy

execute if block ~ ~ ~ stripped_spruce_log run function iva.esb:block/live_spruce/log/stripped
