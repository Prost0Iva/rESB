function iva.esb:block/detect_move
execute if entity @s[tag=!iva.esb.block_move] unless block ~ ~ ~ spruce_fence run function iva.esb:block/live_spruce/fence/destroy
function iva.esb:block/live_spruce/fence/shape