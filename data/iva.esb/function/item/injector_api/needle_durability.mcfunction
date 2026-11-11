execute store result storage iva.esb:item injector.needle_durability int 1 run data get entity @s SelectedItem.components."minecraft:bundle_contents".[{components:{"minecraft:custom_data":{iva.esb.needle:{}}}}].components."minecraft:custom_data"."iva.esb.needle".durability
data modify storage iva.esb:item injector.needle_durability set compute default integer {type:"minecraft:sub",left:{type:"minecraft:storage",storage:"iva.esb:item",path:"injector.needle_durability"},right:1}

execute store result score needle_durability iva.esb.injector_needle_durability run data get storage iva.esb:item injector.needle_durability
execute if score needle_durability iva.esb.injector_needle_durability matches ..0 run item modify entity @s weapon.mainhand iva.esb:injector/needle_durability_0
execute if score needle_durability iva.esb.injector_needle_durability matches ..0 run playsound minecraft:entity.item.break master @a ~ ~ ~ 1 1.45

item modify entity @s weapon.mainhand iva.esb:injector/needle_durability