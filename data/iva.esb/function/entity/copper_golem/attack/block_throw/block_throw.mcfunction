scoreboard players add @s iva.esb.entity_lifetime 1

execute if score @s iva.esb.entity_lifetime matches 20 run function iva.esb:api/rotation_motion {scale_x:.2, scale_y:.2, scale_z:.2}

execute if score @s iva.esb.entity_lifetime matches 100.. run kill