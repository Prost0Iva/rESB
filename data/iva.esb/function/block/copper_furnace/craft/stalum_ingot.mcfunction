execute unless score @s iva.esb.furnace_lit_time matches 1.. run function iva.esb:block/copper_furnace/lit

execute if score @s iva.esb.furnace_lit_time matches 1.. run scoreboard players add @s iva.esb.furnace_cooking_time 2
execute if score @s iva.esb.furnace_lit_time matches 1.. if score @s iva.esb.furnace_cooking_time matches 200 if items block ~ ~ ~ container.2 * run item modify block ~ ~ ~ container.2 iva.esb:count_1
execute if score @s iva.esb.furnace_lit_time matches 1.. if score @s iva.esb.furnace_cooking_time matches 200 run item modify block ~ ~ ~ container.0 iva.esb:count_-1

execute if score @s iva.esb.furnace_lit_time matches 1.. if score @s iva.esb.furnace_cooking_time matches 200 unless items block ~ ~ ~ container.2 * run item replace block ~ ~ ~ container.2 with jigsaw[item_model="iva.esb:stalum_ingot",item_name={"translate": "iva.esb:item.stalum_ingot"},custom_data={"iva.esb.item": "stalum_ingot"},rarity="common"]