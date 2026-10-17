execute as @e[type=item_display,tag=iva.esb.entity_model,tag=iva.esb.entity.iceologer] run function iva.esb:entity/iceologer/animation/animation
function iva.esb:entity/iceologer/spawn

#give @p bee_spawn_egg[item_name={translate:"iva.esb:item.iceologer_spawn_egg"},item_model="iva.esb:iceologer_spawn_egg",entity_data={id:marker,Tags:[iva.esb.entity.iceologer_spawner]}]