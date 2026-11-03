execute at @s if entity @e[type=!#iva.esb:no_mob,tag=iva.esb.boss,distance=..64] run kill
execute at @s run function iva.esb:entity/copper_golem/summon
kill