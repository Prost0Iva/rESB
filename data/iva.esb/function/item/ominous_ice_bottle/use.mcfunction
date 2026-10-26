#give @p minecraft:ominous_bottle[minecraft:ominous_bottle_amplifier=0,minecraft:item_name={translate:"iva.esb:item.ominous_ice_bottle"},item_model="iva.esb:ominous_ice_bottle",custom_data={iva.esb.item:"ominous_ice_bottle"}]
execute anchored eyes positioned ^ ^ ^ run function iva.esb:item/ominous_ice_bottle/raycast
advancement revoke @s only iva.esb:using_item/ominous_ice_bottle