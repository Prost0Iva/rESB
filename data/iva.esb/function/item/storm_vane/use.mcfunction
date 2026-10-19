#give @p chain_command_block[custom_data={iva.esb.item:"storm_vane",iva.esb.magic_attack_speed:0,iva.esb.magic_potential_cost:7500},item_model="iva.esb:storm_vane",item_name={translate:"iva.esb:item.storm_vane"},consumable={consume_seconds:2000000000},max_damage=25,repairable={items:"copper_ingot"},rarity=rare,tooltip_style="iva.esb:rare",!max_stack_size,damage=0]
execute unless predicate iva.esb:is_thunder if predicate iva.esb:check_item/storm_vane/mainhand run item modify entity @s weapon.mainhand {"type": "minecraft:set_damage","damage": -0.041,"add": true}
execute unless predicate iva.esb:is_thunder unless predicate iva.esb:check_item/storm_vane/mainhand if predicate iva.esb:check_item/storm_vane/offhand run item modify entity @s weapon.offhand {"type": "minecraft:set_damage","damage": -0.041,"add": true}
execute unless predicate iva.esb:is_thunder run clear @s chain_command_block[custom_data={iva.esb.item:"storm_vane"},damage=25]

execute unless predicate iva.esb:is_thunder run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
execute unless predicate iva.esb:is_thunder run weather thunder

execute unless predicate iva.esb:is_thunder run function iva.esb:item/magic_item_use
advancement revoke @s only iva.esb:using_item/storm_vane