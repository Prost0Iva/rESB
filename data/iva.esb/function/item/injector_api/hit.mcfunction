#as @e if score @s iva.esb.entity_hit_detection_id = $hit iva.esb.entity_hit_detection_id
data modify storage iva.esb:item injector.vial set from entity @p[distance=..0] SelectedItem.components."minecraft:bundle_contents".[{components:{"minecraft:custom_data":{iva.esb.vial:{}}}}]
execute if data storage iva.esb:item injector.vial.components."minecraft:custom_data"."iva.esb.vial".empty_vial run function iva.esb:item/injector_api/vials/empty_vial
execute if data storage iva.esb:item injector.vial.components."minecraft:custom_data"."iva.esb.vial".poison run function iva.esb:item/injector_api/vials/poison
execute if data storage iva.esb:item injector.vial.components."minecraft:custom_data"."iva.esb.vial".harm run function iva.esb:item/injector_api/vials/harm
execute if data storage iva.esb:item injector.vial.components."minecraft:custom_data"."iva.esb.vial".slowness run function iva.esb:item/injector_api/vials/slowness
execute if data storage iva.esb:item injector.vial.components."minecraft:custom_data"."iva.esb.vial".weakness run function iva.esb:item/injector_api/vials/weakness
#execute as @p[distance=..0] run item modify entity @s weapon.mainhand {type:"minecraft:set_contents",component:"minecraft:bundle_contents",entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",source:"this",slots:"weapon.mainhand"},component:"minecraft:bundle_contents"}}]}
execute as @p[distance=..0] run function iva.esb:item/injector_api/needle_durability