execute unless score #ominous_ice_bottle_check iva.esb.raycast matches 0.. run scoreboard players set #ominous_ice_bottle_check iva.esb.raycast 5
execute if score #ominous_ice_bottle_check iva.esb.raycast matches 1.. run tag @s add iva.esb.ominous_ice_bottle_check

particle block_marker{block_state:{id:barrier}}
execute positioned ~-.5 ~-.5 ~-.5 if entity @e[type=vex,tag=iva.esb.entity.bonebeak,tag=!iva.esb.ominous_ice_bottle_check,dx=0] positioned ~.5 ~.5 ~.5 run tag @n[type=item_display,tag=iva.esb.entity.bonebeak] add iva.esb.animation_transform
execute positioned ~-.5 ~-.5 ~-.5 if entity @e[type=vex,tag=iva.esb.entity.bonebeak,tag=!iva.esb.ominous_ice_bottle_check,dx=0] positioned ~.5 ~.5 ~.5 run clear @s ominous_bottle[custom_data={iva.esb.item:"ominous_ice_bottle"}] 1
execute positioned ~-.5 ~-.5 ~-.5 if entity @e[type=vex,tag=iva.esb.entity.bonebeak,tag=!iva.esb.ominous_ice_bottle_check,dx=0] positioned ~.5 ~.5 ~.5 run scoreboard players set #ominous_ice_bottle_check iva.esb.raycast -1

execute if score #ominous_ice_bottle_check iva.esb.raycast matches ..0 run tag @s remove iva.esb.ominous_ice_bottle_check
execute if score #ominous_ice_bottle_check iva.esb.raycast matches 0.. run scoreboard players remove #ominous_ice_bottle_check iva.esb.raycast 1
execute if score #ominous_ice_bottle_check iva.esb.raycast matches 0.. positioned ^ ^ ^1 run function iva.esb:item/ominous_ice_bottle/raycast