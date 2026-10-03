execute as @e[type=item_display,tag=iva.esb.entity_model,tag=iva.esb.entity.copper_golem] run function iva.esb:entity/copper_golem/animation/animation
execute as @e[type=parched,tag=iva.esb.entity.copper_golem,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.copper_golem.hurt hostile @a ~ ~ ~ 1 0
function iva.esb:entity/copper_golem/spawn
function iva.esb:entity/copper_golem/attack/attack

#give @p bee_spawn_egg[item_name={translate:"iva.esb:item.copper_golem_spawn_egg"},item_model="iva.esb:copper_golem_spawn_egg",entity_data={id:marker,Tags:[iva.esb.entity.copper_golem_spawner]}]