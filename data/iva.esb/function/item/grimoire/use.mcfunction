#give @p chain_command_block[custom_data={iva.esb.item:"grimoire",iva.esb.magic_attack_speed:30,iva.esb.magic_potential_cost:450},item_model="iva.esb:grimoire",item_name={translate:"iva.esb:item.grimoire"},consumable={consume_seconds:2000000000},max_damage=230,repairable={items:"paper"},rarity=common,!max_stack_size,damage=0]
execute if predicate iva.esb:check_item/grimoire/mainhand run item modify entity @s weapon.mainhand {"type": "minecraft:set_damage","damage": -0.005,"add": true}
execute unless predicate iva.esb:check_item/grimoire/mainhand if predicate iva.esb:check_item/grimoire/offhand run item modify entity @s weapon.offhand {"type": "minecraft:set_damage","damage": -0.005,"add": true}
clear @s chain_command_block[custom_data={iva.esb.item:"grimoire"},damage=230]

execute at @s positioned ^ ^1.5 ^1.5 run function iva.esb:entity/iceologer/attack/ice_chunk/run

function iva.esb:item/magic_item_use
advancement revoke @s only iva.esb:using_item/grimoire