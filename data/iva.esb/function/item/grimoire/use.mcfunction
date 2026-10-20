#give @p chain_command_block[custom_data={iva.esb.usable_item:true,iva.esb.item:"grimoire",iva.esb.magic_attack_speed:30,iva.esb.magic_potential_cost:450},item_model="iva.esb:grimoire",item_name={translate:"iva.esb:item.grimoire"},consumable={consume_seconds:2000000000},max_damage=230,repairable={items:"paper"},rarity=common,!max_stack_size,damage=0]

execute at @s run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1.2
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~.5 ~ .4 .8 .4 .01 25
execute at @s positioned ^ ^1.5 ^1.5 run function iva.esb:entity/iceologer/attack/ice_chunk/run

function iva.esb:item/damage_using_item
function iva.esb:item/magic_item_use
advancement revoke @s only iva.esb:using_item/grimoire