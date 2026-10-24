summon vex ~ ~ ~ {Tags:["iva.esb.entity_brain","iva.esb.entity.frostybeak"], active_effects:[{id:"invisibility",duration:-1,show_particles:false}], DeathLootTable:"iva.esb:entity/frostybeak",CustomName:{translate:"iva.esb:entity.frostybeak"},attributes:[{id:max_health,base:145},{id:follow_range,base:64},{id:scale,base:1.9},{id:attack_damage,base:6}],CanPickUpLoot:false,Silent:true,equipment:{},drop_chances:{},PersistenceRequired:true}
summon item_display ~ ~ ~ {Tags:["iva.esb.entity_model","iva.esb.entity.frostybeak"], item:{id:"egg",components:{item_model:"iva.esb:entity/frostybeak"}},teleport_duration:2}
execute store result storage iva.esb:bossbar id int 1 run scoreboard players add #id iva.esb.entity_id 1
scoreboard players operation @e[tag=iva.esb.entity.frostybeak,distance=...1,limit=2,sort=nearest] iva.esb.entity_id = #id iva.esb.entity_id
data modify storage iva.esb:bossbar boss_id set value "frostybeak"
data modify storage iva.esb:bossbar color set value "blue"
function iva.esb:entity/create_bossbar with storage iva.esb:bossbar