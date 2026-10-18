execute as @e[type=item_display,tag=iva.esb.entity_model,tag=iva.esb.entity.iceologer] run function iva.esb:entity/iceologer/animation/animation
execute as @e[type=pillager,tag=iva.esb.entity.iceologer,tag=!iva.esb.animation_playing] run function iva.esb:entity/iceologer/attack/attack_choose
execute as @e[type=pillager,tag=iva.esb.entity_brain,tag=iva.esb.entity.iceologer,nbt={equipment:{mainhand:{components:{"minecraft:charged_projectiles":[{id:"minecraft:arrow"}]}}}}] run item replace entity @s weapon.mainhand with crossbow[item_model="iva.esb:none"]
function iva.esb:entity/iceologer/spawn
function iva.esb:entity/iceologer/attack/attack

#give @p bee_spawn_egg[item_name={translate:"iva.esb:item.iceologer_spawn_egg"},item_model="iva.esb:iceologer_spawn_egg",entity_data={id:marker,Tags:[iva.esb.entity.iceologer_spawner]}]