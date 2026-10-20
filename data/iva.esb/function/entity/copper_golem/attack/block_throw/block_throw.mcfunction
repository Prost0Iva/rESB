scoreboard players add @s iva.esb.entity_lifetime 1

execute if score @s iva.esb.entity_lifetime matches 10 run function iva.esb:api/rotation_motion {scale_x:.25, scale_y:.25, scale_z:.25}
execute if score @s iva.esb.entity_lifetime matches 10.. at @s align xzy run damage @n[type=!#iva.esb:no_mob,tag=!iva.esb.entity.copper_golem_block,tag=!iva.esb.entity.copper_golem,dx=0] 15 falling_block by @s

execute if score @s iva.esb.entity_lifetime matches 100.. run kill