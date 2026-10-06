data modify storage iva.esb:motion pos1 set from entity @s Pos
execute at @s anchored eyes positioned ^ ^ ^5 run summon marker ~ ~ ~ {Tags:["iva.esb.motion_marker"]}
execute at @s anchored eyes positioned ^ ^ ^5 run data modify storage iva.esb:motion pos2 set from entity @n[type=marker,tag=iva.esb.motion_marker,distance=...1] Pos
execute at @s anchored eyes positioned ^ ^ ^5 run kill @n[type=marker,tag=iva.esb.motion_marker,distance=...1]
$data modify storage iva.esb:motion scale set value [$(scale_x),$(scale_y),$(scale_z)]
data modify entity @s Motion[0] set compute default float iva.esb:motion_0
data modify entity @s Motion[1] set compute default float iva.esb:motion_1
data modify entity @s Motion[2] set compute default float iva.esb:motion_2