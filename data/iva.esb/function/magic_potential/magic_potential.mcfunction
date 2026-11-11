scoreboard players set @s iva.esb.max_magic_potential 10000
scoreboard players set @s iva.esb.magic_potential_regen 10
execute unless score @s iva.esb.magic_potential matches -2147483648..2147483647 run scoreboard players set @s iva.esb.magic_potential 0
execute if score @s iva.esb.magic_potential < @s iva.esb.max_magic_potential run scoreboard players operation @s iva.esb.magic_potential += @s iva.esb.magic_potential_regen
execute if score @s iva.esb.magic_potential > @s iva.esb.max_magic_potential run scoreboard players operation @s iva.esb.magic_potential = @s iva.esb.max_magic_potential
execute if score @s iva.esb.magic_potential matches ..-1 run scoreboard players set @s iva.esb.magic_potential 0

execute store result score @s iva.esb.magic_potential_prcnt run compute entity @s integer iva.esb:magic_potential_prcnt

execute if score @s iva.esb.magic_potential_prcnt matches ..99 run function iva.esb:magic_potential/display

execute unless score @s iva.esb.magic_attack_speed matches -2147483648..2147483647 run scoreboard players set @s iva.esb.magic_attack_speed 0
execute if score @s iva.esb.magic_attack_speed matches 1.. run scoreboard players remove @s iva.esb.magic_attack_speed 1