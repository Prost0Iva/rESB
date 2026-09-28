execute as @e[type=item_display,tag=iva.esb.entity_model,tag=iva.esb.entity.taiga_sapling] run function iva.esb:entity/taiga_sapling/animation/animation
function iva.esb:entity/taiga_sapling/spawn

#give @p bee_spawn_egg[item_name={translate:"iva.esb:item.taiga_sapling_spawn_egg"},item_model="iva.esb:taiga_sapling_spawn_egg",entity_data={id:marker,Tags:[iva.esb.entity.taiga_sapling_spawner]}]