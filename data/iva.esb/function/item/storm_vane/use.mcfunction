#give @p chain_command_block[custom_data={iva.esb.usable_item:true,iva.esb.item:"storm_vane",iva.esb.magic_attack_speed:100,iva.esb.magic_potential_cost:7500},item_model="iva.esb:storm_vane",item_name={translate:"iva.esb:item.storm_vane"},consumable={consume_seconds:2000000000},max_damage=25,repairable={items:"copper_ingot"},rarity=rare,tooltip_style="iva.esb:rare",!max_stack_size,damage=0]

execute unless predicate iva.esb:is_thunder run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
execute unless predicate iva.esb:is_thunder run weather thunder

execute unless predicate iva.esb:is_thunder run function iva.esb:item/damage_using_item
execute unless predicate iva.esb:is_thunder run function iva.esb:item/magic_item_use
advancement revoke @s only iva.esb:using_item/storm_vane