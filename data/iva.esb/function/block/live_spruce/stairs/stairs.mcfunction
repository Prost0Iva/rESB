function iva.esb:block/detect_move
execute if entity @s[tag=!iva.esb.block_move] unless block ~ ~ ~ spruce_stairs run function iva.esb:block/live_spruce/stairs/destroy
function iva.esb:block/live_spruce/stairs/shape