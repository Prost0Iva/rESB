execute if data entity @s SelectedItem.components."minecraft:custom_data"."iva.esb.usable_item" store result score @s iva.esb.player_used_item_max_damage run data get entity @s SelectedItem.components."minecraft:max_damage"
execute unless data entity @s SelectedItem.components."minecraft:custom_data"."iva.esb.usable_item" if data entity @s equipment.offhand.components."minecraft:custom_data"."iva.esb.usable_item" store result score @s iva.esb.player_used_item_max_damage run data get entity @s equipment.offhand.components."minecraft:max_damage"

execute if data entity @s SelectedItem.components."minecraft:custom_data"."iva.esb.usable_item" store result score @s iva.esb.player_used_item_damage run data get entity @s SelectedItem.components."minecraft:damage"
execute unless data entity @s SelectedItem.components."minecraft:custom_data"."iva.esb.usable_item" if data entity @s equipment.offhand.components."minecraft:custom_data"."iva.esb.usable_item" store result score @s iva.esb.player_used_item_damage run data get entity @s equipment.offhand.components."minecraft:damage"

execute if data entity @s SelectedItem.components."minecraft:custom_data"."iva.esb.usable_item" run item modify entity @s weapon.mainhand iva.esb:damage_using_item
execute unless data entity @s SelectedItem.components."minecraft:custom_data"."iva.esb.usable_item" if data entity @s equipment.offhand.components."minecraft:custom_data"."iva.esb.usable_item" run item modify entity @s weapon.offhand iva.esb:damage_using_item

execute unless data entity @s SelectedItem.components."minecraft:custom_data"."iva.esb.usable_item" if data entity @s equipment.offhand.components."minecraft:custom_data"."iva.esb.usable_item" if score @s iva.esb.player_used_item_max_damage = @s iva.esb.player_used_item_damage run item replace entity @s weapon.offhand with air
execute if data entity @s SelectedItem.components."minecraft:custom_data"."iva.esb.usable_item" if score @s iva.esb.player_used_item_max_damage = @s iva.esb.player_used_item_damage run item replace entity @s weapon.mainhand with air
execute if score @s iva.esb.player_used_item_max_damage = @s iva.esb.player_used_item_damage run playsound entity.item.break
