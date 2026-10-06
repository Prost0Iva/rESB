execute anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:[iva.esb.entity.energy_ball,"1"]}
execute anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:[iva.esb.entity.energy_ball,"2"]}
execute anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:[iva.esb.entity.energy_ball,"3"]}
execute anchored eyes positioned ^ ^ ^1 run data modify entity @n[type=item_display,tag=iva.esb.entity.energy_ball,tag=1,distance=...1] Rotation set from entity @s Rotation
execute anchored eyes positioned ^ ^ ^1 run data modify entity @n[type=item_display,tag=iva.esb.entity.energy_ball,tag=2,distance=...1] Rotation set from entity @s Rotation
execute anchored eyes positioned ^ ^ ^1 run rotate @n[type=item_display,tag=iva.esb.entity.energy_ball,tag=2,distance=...1] ~10 ~
execute anchored eyes positioned ^ ^ ^1 run data modify entity @n[type=item_display,tag=iva.esb.entity.energy_ball,tag=3,distance=...1] Rotation set from entity @s Rotation
execute anchored eyes positioned ^ ^ ^1 run rotate @n[type=item_display,tag=iva.esb.entity.energy_ball,tag=3,distance=...1] ~-10 ~