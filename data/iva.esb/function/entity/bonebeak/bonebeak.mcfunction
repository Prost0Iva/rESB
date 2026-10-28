execute as @e[type=item_display,tag=iva.esb.entity_model,tag=iva.esb.entity.bonebeak] run function iva.esb:entity/bonebeak/animation/animation
execute as @e[type=vex,tag=iva.esb.entity.bonebeak,tag=!iva.esb.animation_playing] run function iva.esb:entity/bonebeak/attack/attack_choose
execute as @e[type=vex,tag=iva.esb.entity_brain,tag=iva.esb.entity.bonebeak] if predicate iva.esb:undead_burn_condition run effect give @s wither 5 1 true
execute as @e[type=vex,tag=iva.esb.entity_brain,tag=iva.esb.entity.bonebeak] at @s if predicate iva.esb:undead_burn_condition run particle flame ~ ~.45 ~ .2 .2 .2 .01 1 force

execute as @e[type=vex,tag=iva.esb.entity_brain,tag=iva.esb.entity.bonebeak] at @s run function iva.esb:entity/bonebeak/sounds

function iva.esb:entity/bonebeak/spawn

#give @p bee_spawn_egg[item_name={translate:"iva.esb:item.bonebeak_spawn_egg"},item_model="iva.esb:bonebeak_spawn_egg",entity_data={id:marker,Tags:[iva.esb.entity.bonebeak_spawner]}]