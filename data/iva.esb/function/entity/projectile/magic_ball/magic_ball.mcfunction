execute if entity @s[tag=iva.esb.entity.magic_ball_amethyst] if score @s iva.esb.entity_lifetime matches 1.. at @s positioned ~-.8 ~-.2 ~-.8 as @e[type=!#iva.esb:no_mob,tag=!iva.esb.entity.magic_ball,dx=0] positioned ~.6 ~-.6 ~.6 if entity @s[dx=0] positioned ~1 ~1 ~1 run damage @s 4 iva.esb:magic_physical at ~ ~ ~
execute if entity @s[tag=iva.esb.entity.magic_ball_amethyst] at @s run particle dust{color:[0.84, 0.31, 0.85],scale:1} ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=iva.esb.entity.magic_ball_amethyst] at @s run tp ^ ^ ^.55

execute if entity @s[tag=iva.esb.entity.magic_ball_emerald] if score @s iva.esb.entity_lifetime matches 1.. at @s positioned ~-.8 ~-.2 ~-.8 as @e[type=!#iva.esb:no_mob,tag=!iva.esb.entity.magic_ball,dx=0] positioned ~.6 ~-.6 ~.6 if entity @s[dx=0] positioned ~1 ~1 ~1 run damage @s 5 iva.esb:magic_physical at ~ ~ ~
execute if entity @s[tag=iva.esb.entity.magic_ball_emerald] at @s run particle dust{color:[0.24, 0.64, 0.36],scale:1} ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=iva.esb.entity.magic_ball_emerald] at @s run tp ^ ^ ^.57

execute if entity @s[tag=iva.esb.entity.magic_ball_diamond] if score @s iva.esb.entity_lifetime matches 1.. at @s positioned ~-.8 ~-.2 ~-.8 as @e[type=!#iva.esb:no_mob,tag=!iva.esb.entity.magic_ball,dx=0] positioned ~.6 ~-.6 ~.6 if entity @s[dx=0] positioned ~1 ~1 ~1 run damage @s 6 iva.esb:magic_physical at ~ ~ ~
execute if entity @s[tag=iva.esb.entity.magic_ball_diamond] at @s run particle dust{color:[0.51, 0.93, 0.98],scale:1} ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=iva.esb.entity.magic_ball_diamond] at @s run tp ^ ^ ^.6

scoreboard players add @s iva.esb.entity_lifetime 1
execute if score @s iva.esb.entity_lifetime matches 100.. run kill