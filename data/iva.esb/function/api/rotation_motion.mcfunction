data modify storage iva.esb:motion pos1 set from entity @s Pos
execute at @s anchored eyes positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["iva.esb.motion_marker"]}
execute at @s anchored eyes positioned ^ ^ ^10 run data modify storage iva.esb:motion pos2 set from entity @n[type=marker,tag=iva.esb.motion_marker,distance=...1] Pos
execute at @s anchored eyes positioned ^ ^ ^10 run kill @n[type=marker,tag=iva.esb.motion_marker,distance=...1]
$execute store result entity @s Motion[0] double 1 store result storage iva.esb:motion motion[0] double 1 run compute default float iva.esb:motion_0 $(scale_x)
$execute store result entity @s Motion[1] double 1 store result storage iva.esb:motion motion[1] double 1 run compute default float iva.esb:motion_1 $(scale_y)
$execute store result entity @s Motion[2] double 1 store result storage iva.esb:motion motion[2] double 1 run compute default float iva.esb:motion_2 $(scale_z)