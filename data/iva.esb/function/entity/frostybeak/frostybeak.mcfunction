function iva.esb:entity/frostybeak/attack/attack_choose
function iva.esb:entity/frostybeak/bossbar_health_upd

execute if predicate iva.esb:undead_burn_condition run tp ~ ~-1000 ~
execute unless entity @a[distance=..64] run tp ~ ~-1000 ~

function iva.esb:entity/frostybeak/sounds

#give @p bee_spawn_egg[item_name={translate:"iva.esb:item.frostybeak_spawn_egg"},item_model="iva.esb:frostybeak_spawn_egg",entity_data={id:marker,Tags:[iva.esb.entity.frostybeak_spawner]}]