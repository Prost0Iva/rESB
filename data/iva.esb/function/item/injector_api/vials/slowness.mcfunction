item modify entity @p[distance=..0] weapon.mainhand {type:"minecraft:modify_contents",component:"minecraft:bundle_contents",modifier:{type:"minecraft:filtered",item_filter:{items:"minecraft:jigsaw",predicates:{"minecraft:custom_data":{iva.esb.vial:{slowness:1}}}},on_pass:{type:"minecraft:set_count",count:-1,add:1}}}
effect give @s slowness 25 0
damage @s 4 iva.esb:alchemy