summon vex ~ ~ ~ {Tags:["iva.esb.entity_brain","iva.esb.entity.frostybeak","iva.esb.spawn_checked","iva.esb.boss"], active_effects:[{id:"invisibility",duration:-1,show_particles:false}], DeathLootTable:"iva.esb:entity/frostybeak",CustomName:{translate:"iva.esb:entity.frostybeak"},attributes:[{id:max_health,base:145},{id:follow_range,base:64},{id:scale,base:1.9},{id:attack_damage,base:6}],CanPickUpLoot:false,Silent:true,equipment:{},drop_chances:{},PersistenceRequired:true}
summon item_display ~ ~ ~ {Tags:["iva.esb.entity_model","iva.esb.entity.frostybeak"], item:{id:"egg",components:{item_model:"iva.esb:entity/frostybeak"}},teleport_duration:2}
execute store result storage iva.esb:bossbar temp_id int 1 run scoreboard players add #id iva.esb.entity_id 1
scoreboard players operation @e[tag=iva.esb.entity.frostybeak,distance=...1,limit=2,sort=nearest] iva.esb.entity_id = #id iva.esb.entity_id

data modify storage iva.esb:bossbar temp_name set value "frostybeak"
data modify storage iva.esb:bossbar temp_color set value "blue"
data modify storage iva.esb:bossbar temp_max set value 145
function iva.esb:entity/bossbar_create with storage iva.esb:bossbar