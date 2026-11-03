function iva.esb:entity/bonebeak/attack/attack_choose
execute if predicate iva.esb:undead_burn_condition run effect give @s wither 5 1 true
execute if predicate iva.esb:undead_burn_condition run particle flame ~ ~.45 ~ .2 .2 .2 .01 1
function iva.esb:entity/bonebeak/sounds

#give @p bee_spawn_egg[item_name={translate:"iva.esb:item.bonebeak_spawn_egg"},item_model="iva.esb:bonebeak_spawn_egg",entity_data={id:marker,Tags:[iva.esb.entity.bonebeak_spawner]}]