execute as @e[type=marker,tag=iva.esb.entity.copper_golem_spawner] at @s if entity @e[type=!#iva.esb:no_mob,tag=iva.esb.boss,distance=..64] run kill
execute as @e[type=marker,tag=iva.esb.entity.copper_golem_spawner] at @s run function iva.esb:entity/copper_golem/summon
execute as @e[type=marker,tag=iva.esb.entity.copper_golem_spawner] run kill