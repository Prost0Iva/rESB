scoreboard players set @a iva.esb.max_magic_potential 10000
scoreboard players set @a iva.esb.magic_potential_regen 10
execute as @a unless score @s iva.esb.magic_potential matches -2147483648..2147483647 run scoreboard players set @s iva.esb.magic_potential 0
execute as @a if score @s iva.esb.magic_potential < @s iva.esb.max_magic_potential run scoreboard players operation @s iva.esb.magic_potential += @s iva.esb.magic_potential_regen
execute as @a if score @s iva.esb.magic_potential > @s iva.esb.max_magic_potential run scoreboard players operation @s iva.esb.magic_potential = @s iva.esb.max_magic_potential
execute as @a if score @s iva.esb.magic_potential matches ..-1 run scoreboard players set @s iva.esb.magic_potential 0

execute as @a store result score @s iva.esb.magic_potential_prcnt run compute entity @s integer iva.esb:magic_potential_prcnt

execute as @a if score @s iva.esb.magic_potential_prcnt matches ..99 run function iva.esb:magic_potential/display

execute as @a unless score @s iva.esb.magic_attack_speed matches -2147483648..2147483647 run scoreboard players set @s iva.esb.magic_attack_speed 0
execute as @a if score @s iva.esb.magic_attack_speed matches 1.. run scoreboard players remove @s iva.esb.magic_attack_speed 1

execute as @a if score @s iva.esb.magic_attack_speed matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data"."iva.esb.usable_item" run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"!minecraft:consumable":{}}}
execute as @a if score @s iva.esb.magic_attack_speed matches 1.. if data entity @s equipment.offhand.components."minecraft:custom_data"."iva.esb.usable_item" run item modify entity @s weapon.offhand {type:"minecraft:set_components",components:{"!minecraft:consumable":{}}}
execute as @a if score @s iva.esb.magic_attack_speed matches ..0 if data entity @s SelectedItem.components."minecraft:custom_data"."iva.esb.usable_item" run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:consumable":{"consume_seconds":2000000000}}}
execute as @a if score @s iva.esb.magic_attack_speed matches ..0 if data entity @s equipment.offhand.components."minecraft:custom_data"."iva.esb.usable_item" run item modify entity @s weapon.offhand {type:"minecraft:set_components",components:{"minecraft:consumable":{"consume_seconds":2000000000}}}
