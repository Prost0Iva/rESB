function iva.esb:block/detect_move
execute if entity @s[tag=!iva.esb.block_move] unless block ~ ~ ~ spruce_trapdoor run function iva.esb:block/live_spruce/trapdoor/destroy
function iva.esb:block/live_spruce/trapdoor/shape