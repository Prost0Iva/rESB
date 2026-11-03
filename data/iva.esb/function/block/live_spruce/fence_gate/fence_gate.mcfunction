function iva.esb:block/detect_move
execute if entity @s[tag=!iva.esb.block_move] unless block ~ ~ ~ spruce_fence_gate run function iva.esb:block/live_spruce/fence_gate/destroy
function iva.esb:block/live_spruce/fence_gate/shape