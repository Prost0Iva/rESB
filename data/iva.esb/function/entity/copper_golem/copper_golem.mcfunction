execute at @s run function iva.esb:entity/copper_golem/attack/attack_choose
execute at @s run function iva.esb:entity/copper_golem/bossbar_health_upd
execute at @s run function iva.esb:entity/copper_golem/sounds

execute at @s unless entity @a[distance=..64] run tp ~ ~-1000 ~
#give @p bee_spawn_egg[item_name={translate:"iva.esb:item.copper_golem_spawn_egg"},item_model="iva.esb:copper_golem_spawn_egg",entity_data={id:marker,Tags:[iva.esb.entity.copper_golem_spawner]}]