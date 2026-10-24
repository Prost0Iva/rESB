execute if score @s iva.esb.entity_lifetime matches 10.. at @s positioned ~-.8 ~-.2 ~-.8 as @e[type=!#iva.esb:no_mob,tag=!iva.esb.entity.icicle,dx=0] positioned ~.6 ~-.6 ~.6 if entity @s[dx=0] positioned ~1 ~1 ~1 run damage @s 7.5 iva.esb:magic_physical at ~ ~ ~
scoreboard players add @s iva.esb.entity_lifetime 1
execute if score @s iva.esb.entity_lifetime matches 100.. run kill
execute at @s run tp ^ ^ ^.4