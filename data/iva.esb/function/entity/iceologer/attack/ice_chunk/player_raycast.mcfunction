scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
#predicate=iva.esb:entity_id
execute unless score #player_cast_ice_chunk iva.esb.raycast matches 0.. run scoreboard players set #player_cast_ice_chunk iva.esb.raycast 15
execute if score #player_cast_ice_chunk iva.esb.raycast matches 1.. run tag @s add iva.esb.player_cast_ice_chunk

#particle block_marker{block_state:{id:barrier}}
execute positioned ~-.5 ~-.5 ~-.5 if entity @e[type=!#iva.esb:no_mob,tag=!iva.esb.player_cast_ice_chunk,dx=0] positioned ~.5 ~.5 ~.5 run tp @n[type=item_display,tag=iva.esb.entity.ice_chunk,predicate=iva.esb:entity_id] ~ ~8 ~
execute positioned ~-.5 ~-.5 ~-.5 if entity @e[type=!#iva.esb:no_mob,tag=!iva.esb.player_cast_ice_chunk,dx=0] positioned ~.5 ~.5 ~.5 run scoreboard players set #player_cast_ice_chunk iva.esb.raycast -1

execute if score #player_cast_ice_chunk iva.esb.raycast matches 0 run tp @n[type=item_display,tag=iva.esb.entity.ice_chunk,predicate=iva.esb:entity_id] ~ ~8 ~

execute if score #player_cast_ice_chunk iva.esb.raycast matches ..0 run tag @s remove iva.esb.player_cast_ice_chunk
execute if score #player_cast_ice_chunk iva.esb.raycast matches 0.. run scoreboard players remove #player_cast_ice_chunk iva.esb.raycast 1
execute if score #player_cast_ice_chunk iva.esb.raycast matches 0.. positioned ^ ^ ^1 run function iva.esb:entity/iceologer/attack/ice_chunk/player_raycast